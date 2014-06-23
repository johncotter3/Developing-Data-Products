shinyUI(pageWithSidebar(
  headerPanel('Vehicle Fault Data'),
  sidebarPanel(
    h3("Instructions"),
    p("This app gives a visual display of vehicle faults found in a test fleet.  The input data
      is a csv file of all vehicle faults in the test fleet.  A Google Earth KML file can also
      be downloaded at the bottom to see a visual representation of the data on a map"),
    p("Change the date range to filter the total data."),
    h3("Inputs"),
    h4(htmlOutput("dateRangeUI")),
    hr(),
    h3("Outputs"),
    h4("Total Faults: "),
    textOutput("n_faults"),
    h4("Number of Vehicles: "),
    textOutput("n_vehicles"),
    h4("Google Earth Locations:"),
    a("KML",href="https://www.dropbox.com/s/trp28r5zsb5uag2/RGfaults.kml"),
    h3("About"),
    p("Author: John Cotter"),
    p("Date: 06/21/2014"),
    p("Github: ",
      a("https://github.com/johncotter3/myCoursera",href="https://github.com/johncotter3/myCoursera/tree/master/Developing%20Data%20Products")
    )
  ),
  mainPanel(fluidPage(fluidRow(
    column(12,
      htmlOutput("myPlot"),
      htmlOutput("myBar")
    )
  )))
))