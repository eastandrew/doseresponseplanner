# Exposure Response Planning
Plan arrangement of exposure levels based on log scale.

Easy way to visualize how exposure levels will arrange on a log scale.

Two approaches:  
* Use a starting and ending concentration and number of concentrations to plan log-scaled equidistant concentrations.
* Use a starting concentration and constant multiplicative factor to create concentrations

Code is in R script.



## Example of script ##

`numbertreats <- 5 #number of treatments  
starting <- 0.02 #starting concentration  
factorstart <- exp(1) #multiplicative factor  
df <- data.frame(effmag=seq(1,0,length.out=numbertreats))  
df$treatstart <- starting  
df$factor <- factorstart  
df$ID <- as.numeric(row.names(df))-1  
df$treat <- df$treatstart*(df$factor^df$ID)  
plot(1,1,pch=NA, ylim=c(0,1),xlim=c(min(df$treat),max(df$treat)),xlab="log visualized concentration",ylab="effect",log="x")  
points(effmag~treat, data=df, pch=NA, type="b")  
text(effmag~treat, data=df, bquote(.(round(df$treat,3))))`  



## Shiny App ##
To run shiny app:

`library(shiny)`

`runGitHub("doseresponseplan", "eastandrew")`

