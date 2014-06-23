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
  faults <- rawData
  faults$SPNFMI <- paste(faults$SPN,faults$FMI,sep=":")
  faults$DATE <- as.Date(faults$TIME_STAMP, "%m/%d/%Y")
  calendarData <- as.data.frame(table(as.Date(faults[,"TIME_STAMP"],"%m/%d/%Y")))
  calendarData$Date <- as.POSIXct(calendarData$Var1)
  
  output$myPlot <- renderGvis({ 
    gvisCalendar(calendarData, datevar="Date", numvar="Freq",
                  options=list(
                    title="Calendar Heat Map",
                    height=175
                   ),
                  chartid="Calendar")

  })
})