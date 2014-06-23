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
  
  # Create reactive date range with defaults determined from the input data
  output$dateRangeUI <- renderUI({ 
    dateRangeInput("daterange", "Date range:",
                      start  = range(faults$DATE)[1], #"2013-01-01",
                      end    = range(faults$DATE)[2], #Sys.Date(),
                      startview = "decade")
  })

  # Create reactive data frame for rendering plots
  getFaults <- reactive({
    # Filter based on date range input
    faults[faults$DATE>=input$daterange[1] & faults$DATE<=input$daterange[2],]  
  })
  getCalendarData <- reactive({
    calendarData <- as.data.frame(table(as.Date(getFaults()[,"TIME_STAMP"],"%m/%d/%Y")))
    calendarData$Date <- as.POSIXct(calendarData$Var1)
    calendarData
  })
  getBarData <- reactive({
    barData <- as.data.frame(table(getFaults()[,"SPNFMI"]))
    barData$html.tooltip = paste(faults[match(barData$Var1,faults$SPNFMI),"SPN_TEXT"]," -- Freq: ",barData$Freq,sep="")
    barData[with(barData, order(-Freq)), ]
    #barData
  })
  
  output$myPlot <- renderGvis({ 
    c <- gvisCalendar(getCalendarData(), datevar="Date", numvar="Freq",
                  options=list(
                    title="Calendar Heat Map",
                    height=175
                   ),
                  chartid="Calendar")

    b <- gvisBarChart(getBarData(), xvar="Var1", yvar=c('Freq','html.tooltip'),
                  options=list(
                    title="Total Fault Occurances",
                    titleTextStyle="{color:'#888888', fontSize:30, fontName:'Helvetica', bold:false}",
                    height=nrow(getBarData())*25
                    )
                  )

    gvisMerge(c,b, horizontal=FALSE) 

  })
  output$n_faults <- renderText({
    nrow(getFaults()) 
  })
  output$n_vehicles <- renderText({ length(unique(getFaults()$VIN_NO)) })

})