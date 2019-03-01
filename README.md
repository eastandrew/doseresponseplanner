# Exposure Response Planning
Plan arrangement of exposure levels based on log scale and XX% effect.

Easy way to visualize how exposure levels will arrange on a log scale.

Replace X values with possible dose values, change % effect size if needed (currently at 20% decline divided by number of exposure levels) and then plot as many as required.

Usually, linearity/consistent inter-level spacing is the goal.

Code is in R script.



## Example of script ##
Set up the plot itself.  Adjust xlim and ylim as needed:

plot(1,1,pch=NA, ylim=c(0,1),xlim=c(0.01,2),xlab="log visualized conc",ylab="effect",log="x") 

Add lines with breaks for points:

points((c(2,0.2,0.02)),c(seq(0.8,1,length.out=3)), ylim=c(0,1),pch=NA,type="b")

Add points as text of the exposure level:

text((c(2,0.2,0.02)),c(seq(0.8,1,length.out=3)),c("2","0.2","0.02"))
