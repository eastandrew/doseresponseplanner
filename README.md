# Exposure Response Planning
Plan arrangement of exposure levels based on log scale.

Easy way to visualize how exposure levels will arrange on a log scale.

Two approaches:  
* Use a starting and ending concentration and number of concentrations to plan log-scaled equidistant concentrations.
* Use a starting concentration and constant multiplicative factor to create concentrations

Code is in R script.  
To source in R:  
`library(RCurl)`  
`script <- getURL("https://raw.githubusercontent.com/eastandrew/doseresponseplanning/master/doserespplan.R", ssl.verifypeer=F)`  
`script`  
`eval(parse(text=script))`  


## Shiny App ##
To run shiny app:

`library(shiny)`

`runGitHub("doseresponseplan", "eastandrew")`

