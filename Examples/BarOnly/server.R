library(googleVis)
library(shiny)
#library(plotKML)

# Variables
ARS327_FTA3_2_RG_Faults_140604_RawData <- read.csv("data/ARS327_FTA3_2_RG_Faults_140604_RawData.csv")
rawData <- ARS327_FTA3_2_RG_Faults_140604_RawData
file.exists("data/RGfaults.kml") #hack to make sure file is available on shiny server

# # Create KML file of RG Faults
# kmlSPDF <- SpatialPointsDataFrame(coords=rawData[c("LONGITUDE","LATITUDE")],
#                                data=rawData,
#                                proj4string = CRS("+proj=longlat +datum=WGS84")
#                                ) 
# plotKML(kmlSPDF, 
#         folder.name="RG Fault Data",
#         file.name="RGfaults.kml", 
#         points_name=iconv(kmlSPDF$EVENT_ID, from = "gb2312", to = "UTF-8"),
#         balloon=TRUE,
#         exif.info = kmlSPDF
#         )


# kml_open(kmlSPDF, 
#          folder.name="RG Fault Data",
#          file.name="RGfaults.kml", 
#          overwrite=TRUE)
# kml_layer.SpatialPoints(kmlSPDF,
#                         metadata = kmlSPDF,
#                         points_name=iconv(kmlSPDF$EVENT_ID, from = "gb2312", to = "UTF-8")
#                         )
# kml_close()

shinyServer(function(input, output) {
  faults <- rawData[1:75,]
  faults$SPNFMI <- paste(faults$SPN,faults$FMI,sep=":")
  faults$DATE <- as.Date(faults$TIME_STAMP, "%m/%d/%Y")
  barData <- as.data.frame(table(faults[,"SPNFMI"]))
  barData$html.tooltip = paste(faults[match(barData$Var1,faults$SPNFMI),"SPN_TEXT"]," -- Freq: ",barData$Freq,sep="")
  barData[with(barData, order(-Freq)), ]
   
  output$myBar <- renderGvis({ 
    gvisBarChart(barData, xvar="Var1", yvar=c('Freq','html.tooltip'),
                  options=list(
                    title="Total Fault Occurances",
                    titleTextStyle="{color:'#888888', fontSize:30, fontName:'Helvetica', bold:false}",
                    height=500
                    )
                  )
  })

})