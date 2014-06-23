---
title       : Vehicle Fault Data
subtitle    : Daimler
author      : John Cotter
job         : Senior Test Engineer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Information Page

The vehicle fault app gives a visual display of vehicle faults found in an actual test fleet. The input data is a csv file of all vehicle faults in the test fleet. A Google Earth KML file can also be downloaded at the bottom to see a visual representation of the data on a map.  Changing the input date range will filter the faults displayed in the plots and recalculates the output data.



--- .class #id 

## Faults per Day
Total Faults: 
[1] 1462

```
## <!-- Calendar generated in R 3.1.0 by googleVis 0.5.2 package -->
## <!-- Sun Jun 22 22:25:09 2014 -->
## 
## 
## <!-- jsHeader -->
## <script type="text/javascript">
##  
## // jsData 
## function gvisDataCalendar () {
## var data = new google.visualization.DataTable();
## var datajson =
## [
##  [
##  new Date(2014,0,10,0,0,0),
## 3 
## ],
## [
##  new Date(2014,0,11,0,0,0),
## 4 
## ],
## [
##  new Date(2014,0,12,0,0,0),
## 7 
## ],
## [
##  new Date(2014,0,13,0,0,0),
## 7 
## ],
## [
##  new Date(2014,0,14,0,0,0),
## 7 
## ],
## [
##  new Date(2014,0,15,0,0,0),
## 4 
## ],
## [
##  new Date(2014,0,16,0,0,0),
## 6 
## ],
## [
##  new Date(2014,0,17,0,0,0),
## 7 
## ],
## [
##  new Date(2014,0,18,0,0,0),
## 1 
## ],
## [
##  new Date(2014,0,19,0,0,0),
## 3 
## ],
## [
##  new Date(2014,0,20,0,0,0),
## 5 
## ],
## [
##  new Date(2014,0,21,0,0,0),
## 8 
## ],
## [
##  new Date(2014,0,22,0,0,0),
## 10 
## ],
## [
##  new Date(2014,0,24,0,0,0),
## 1 
## ],
## [
##  new Date(2014,0,27,0,0,0),
## 1 
## ],
## [
##  new Date(2014,0,28,0,0,0),
## 12 
## ],
## [
##  new Date(2014,0,29,0,0,0),
## 8 
## ],
## [
##  new Date(2014,0,30,0,0,0),
## 3 
## ],
## [
##  new Date(2014,0,31,0,0,0),
## 10 
## ],
## [
##  new Date(2014,1,1,0,0,0),
## 1 
## ],
## [
##  new Date(2014,1,2,0,0,0),
## 9 
## ],
## [
##  new Date(2014,1,3,0,0,0),
## 5 
## ],
## [
##  new Date(2014,1,4,0,0,0),
## 4 
## ],
## [
##  new Date(2014,1,5,0,0,0),
## 4 
## ],
## [
##  new Date(2014,1,6,0,0,0),
## 22 
## ],
## [
##  new Date(2014,1,7,0,0,0),
## 14 
## ],
## [
##  new Date(2014,1,10,0,0,0),
## 8 
## ],
## [
##  new Date(2014,1,11,0,0,0),
## 19 
## ],
## [
##  new Date(2014,1,12,0,0,0),
## 12 
## ],
## [
##  new Date(2014,1,13,0,0,0),
## 3 
## ],
## [
##  new Date(2014,1,14,0,0,0),
## 8 
## ],
## [
##  new Date(2014,1,15,0,0,0),
## 1 
## ],
## [
##  new Date(2014,1,16,0,0,0),
## 8 
## ],
## [
##  new Date(2014,1,17,0,0,0),
## 4 
## ],
## [
##  new Date(2014,1,18,0,0,0),
## 4 
## ],
## [
##  new Date(2014,1,19,0,0,0),
## 15 
## ],
## [
##  new Date(2014,1,20,0,0,0),
## 13 
## ],
## [
##  new Date(2014,1,21,0,0,0),
## 7 
## ],
## [
##  new Date(2014,1,22,0,0,0),
## 2 
## ],
## [
##  new Date(2014,1,23,0,0,0),
## 5 
## ],
## [
##  new Date(2014,1,24,0,0,0),
## 18 
## ],
## [
##  new Date(2014,1,25,0,0,0),
## 5 
## ],
## [
##  new Date(2014,1,26,0,0,0),
## 11 
## ],
## [
##  new Date(2014,1,27,0,0,0),
## 5 
## ],
## [
##  new Date(2014,1,28,0,0,0),
## 2 
## ],
## [
##  new Date(2014,2,1,0,0,0),
## 2 
## ],
## [
##  new Date(2014,2,3,0,0,0),
## 7 
## ],
## [
##  new Date(2014,2,4,0,0,0),
## 23 
## ],
## [
##  new Date(2014,2,5,0,0,0),
## 27 
## ],
## [
##  new Date(2014,2,6,0,0,0),
## 8 
## ],
## [
##  new Date(2014,2,7,0,0,0),
## 8 
## ],
## [
##  new Date(2014,2,8,0,0,0),
## 8 
## ],
## [
##  new Date(2014,2,9,0,0,0),
## 4 
## ],
## [
##  new Date(2014,2,10,0,0,0),
## 4 
## ],
## [
##  new Date(2014,2,11,0,0,0),
## 34 
## ],
## [
##  new Date(2014,2,12,0,0,0),
## 1 
## ],
## [
##  new Date(2014,2,13,0,0,0),
## 2 
## ],
## [
##  new Date(2014,2,14,0,0,0),
## 23 
## ],
## [
##  new Date(2014,2,15,0,0,0),
## 2 
## ],
## [
##  new Date(2014,2,16,0,0,0),
## 2 
## ],
## [
##  new Date(2014,2,17,0,0,0),
## 5 
## ],
## [
##  new Date(2014,2,18,0,0,0),
## 6 
## ],
## [
##  new Date(2014,2,19,0,0,0),
## 39 
## ],
## [
##  new Date(2014,2,21,0,0,0),
## 20 
## ],
## [
##  new Date(2014,2,22,0,0,0),
## 3 
## ],
## [
##  new Date(2014,2,23,0,0,0),
## 3 
## ],
## [
##  new Date(2014,2,24,0,0,0),
## 12 
## ],
## [
##  new Date(2014,2,25,0,0,0),
## 34 
## ],
## [
##  new Date(2014,2,26,0,0,0),
## 15 
## ],
## [
##  new Date(2014,2,27,0,0,0),
## 5 
## ],
## [
##  new Date(2014,2,28,0,0,0),
## 7 
## ],
## [
##  new Date(2014,2,29,0,0,0),
## 1 
## ],
## [
##  new Date(2014,2,30,0,0,0),
## 5 
## ],
## [
##  new Date(2014,2,31,0,0,0),
## 18 
## ],
## [
##  new Date(2014,3,1,0,0,0),
## 25 
## ],
## [
##  new Date(2014,3,2,0,0,0),
## 27 
## ],
## [
##  new Date(2014,3,3,0,0,0),
## 12 
## ],
## [
##  new Date(2014,3,4,0,0,0),
## 10 
## ],
## [
##  new Date(2014,3,5,0,0,0),
## 5 
## ],
## [
##  new Date(2014,3,6,0,0,0),
## 6 
## ],
## [
##  new Date(2014,3,7,0,0,0),
## 19 
## ],
## [
##  new Date(2014,3,8,0,0,0),
## 10 
## ],
## [
##  new Date(2014,3,10,0,0,0),
## 80 
## ],
## [
##  new Date(2014,3,11,0,0,0),
## 5 
## ],
## [
##  new Date(2014,3,12,0,0,0),
## 1 
## ],
## [
##  new Date(2014,3,13,0,0,0),
## 3 
## ],
## [
##  new Date(2014,3,14,0,0,0),
## 5 
## ],
## [
##  new Date(2014,3,15,0,0,0),
## 7 
## ],
## [
##  new Date(2014,3,16,0,0,0),
## 10 
## ],
## [
##  new Date(2014,3,17,0,0,0),
## 5 
## ],
## [
##  new Date(2014,3,18,0,0,0),
## 3 
## ],
## [
##  new Date(2014,3,19,0,0,0),
## 7 
## ],
## [
##  new Date(2014,3,20,0,0,0),
## 4 
## ],
## [
##  new Date(2014,3,21,0,0,0),
## 2 
## ],
## [
##  new Date(2014,3,22,0,0,0),
## 10 
## ],
## [
##  new Date(2014,3,23,0,0,0),
## 18 
## ],
## [
##  new Date(2014,3,24,0,0,0),
## 23 
## ],
## [
##  new Date(2014,3,25,0,0,0),
## 43 
## ],
## [
##  new Date(2014,3,26,0,0,0),
## 5 
## ],
## [
##  new Date(2014,3,27,0,0,0),
## 3 
## ],
## [
##  new Date(2014,3,28,0,0,0),
## 24 
## ],
## [
##  new Date(2014,3,29,0,0,0),
## 15 
## ],
## [
##  new Date(2014,3,30,0,0,0),
## 13 
## ],
## [
##  new Date(2014,4,1,0,0,0),
## 15 
## ],
## [
##  new Date(2014,4,2,0,0,0),
## 19 
## ],
## [
##  new Date(2014,4,3,0,0,0),
## 7 
## ],
## [
##  new Date(2014,4,4,0,0,0),
## 7 
## ],
## [
##  new Date(2014,4,5,0,0,0),
## 47 
## ],
## [
##  new Date(2014,4,6,0,0,0),
## 20 
## ],
## [
##  new Date(2014,4,7,0,0,0),
## 17 
## ],
## [
##  new Date(2014,4,8,0,0,0),
## 10 
## ],
## [
##  new Date(2014,4,9,0,0,0),
## 28 
## ],
## [
##  new Date(2014,4,10,0,0,0),
## 9 
## ],
## [
##  new Date(2014,4,11,0,0,0),
## 8 
## ],
## [
##  new Date(2014,4,12,0,0,0),
## 16 
## ],
## [
##  new Date(2014,4,13,0,0,0),
## 12 
## ],
## [
##  new Date(2014,4,14,0,0,0),
## 5 
## ],
## [
##  new Date(2014,4,15,0,0,0),
## 10 
## ],
## [
##  new Date(2014,4,16,0,0,0),
## 5 
## ],
## [
##  new Date(2014,4,17,0,0,0),
## 8 
## ],
## [
##  new Date(2014,4,18,0,0,0),
## 8 
## ],
## [
##  new Date(2014,4,19,0,0,0),
## 18 
## ],
## [
##  new Date(2014,4,20,0,0,0),
## 7 
## ],
## [
##  new Date(2014,4,21,0,0,0),
## 10 
## ],
## [
##  new Date(2014,4,22,0,0,0),
## 17 
## ],
## [
##  new Date(2014,4,23,0,0,0),
## 11 
## ],
## [
##  new Date(2014,4,24,0,0,0),
## 9 
## ],
## [
##  new Date(2014,4,25,0,0,0),
## 5 
## ],
## [
##  new Date(2014,4,26,0,0,0),
## 5 
## ],
## [
##  new Date(2014,4,27,0,0,0),
## 9 
## ],
## [
##  new Date(2014,4,28,0,0,0),
## 7 
## ],
## [
##  new Date(2014,4,29,0,0,0),
## 8 
## ],
## [
##  new Date(2014,4,30,0,0,0),
## 22 
## ],
## [
##  new Date(2014,4,31,0,0,0),
## 4 
## ],
## [
##  new Date(2014,5,1,0,0,0),
## 4 
## ],
## [
##  new Date(2014,5,2,0,0,0),
## 17 
## ],
## [
##  new Date(2014,5,3,0,0,0),
## 13 
## ],
## [
##  new Date(2014,5,4,0,0,0),
## 1 
## ] 
## ];
## data.addColumn('datetime','Date');
## data.addColumn('number','Freq');
## data.addRows(datajson);
## return(data);
## }
##  
## // jsDrawChart
## function drawChartCalendar() {
## var data = gvisDataCalendar();
## var options = {};
## options["width"] =    600;
## options["height"] =    175;
## options["title"] = "Calendar Heat Map";
## 
## 
##     var chart = new google.visualization.Calendar(
##     document.getElementById('Calendar')
##     );
##     chart.draw(data,options);
##     
## 
## }
##   
##  
## // jsDisplayChart
## (function() {
## var pkgs = window.__gvisPackages = window.__gvisPackages || [];
## var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
## var chartid = "calendar";
##   
## // Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
## var i, newPackage = true;
## for (i = 0; newPackage && i < pkgs.length; i++) {
## if (pkgs[i] === chartid)
## newPackage = false;
## }
## if (newPackage)
##   pkgs.push(chartid);
##   
## // Add the drawChart function to the global list of callbacks
## callbacks.push(drawChartCalendar);
## })();
## function displayChartCalendar() {
##   var pkgs = window.__gvisPackages = window.__gvisPackages || [];
##   var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
##   window.clearTimeout(window.__gvisLoad);
##   // The timeout is set to 100 because otherwise the container div we are
##   // targeting might not be part of the document yet
##   window.__gvisLoad = setTimeout(function() {
##   var pkgCount = pkgs.length;
##   google.load("visualization", "1", { packages:pkgs, callback: function() {
##   if (pkgCount != pkgs.length) {
##   // Race condition where another setTimeout call snuck in after us; if
##   // that call added a package, we must not shift its callback
##   return;
## }
## while (callbacks.length > 0)
## callbacks.shift()();
## } });
## }, 100);
## }
##  
## // jsFooter
## </script>
##  
## <!-- jsChart -->  
## <script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartCalendar"></script>
##  
## <!-- divChart -->
##   
## <div id="Calendar"
##   style="width: 600px; height: 175px;">
## </div>
```

--- .class #id

## Total Faults

<iframe src="https://johncotter.shinyapps.io/CalendarOnly/" width="100%" 
height="100%" frameborder="0">Loading</iframe>


--- .class #id

## Map of Faults

