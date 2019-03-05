plot(1,1,pch=NA, ylim=c(0,1),xlim=c(0.01,2),xlab="log visualized conc",ylab="effect",log="x")
points((c(2,0.2,0.02)),c(seq(0.8,1,length.out=3)), ylim=c(0,1),pch=NA,type="b")
text((c(2,0.2,0.02)),c(seq(0.8,1,length.out=3)),c("2","0.2","0.02"))
points((c(1,0.5,0.2,0.05)),c(seq(0.7,0.9,length.out=4)), pch=NA,type="b")
text((c(1,0.5,0.2,0.05)),c(seq(0.7,0.9,length.out=4)),c("1","0.5","0.2","0.05"))
points((c(1,0.5,0.1,0.05)),c(seq(0.6,0.8,length.out=4)), pch=NA,type="b")
text((c(1,0.5,0.1,0.05)),c(seq(0.6,0.8,length.out=4)),c("1","0.5","0.1","0.05"))
points((c(1.5,0.5,0.15,0.05)),c(seq(0.5,0.7,length.out=4)), pch=NA,type="b")
text((c(1.5,0.5,0.15,0.05)),c(seq(0.5,0.7,length.out=4)),c("1.5","0.5","0.15","0.05"))
points((c(2,0.5,0.2,0.05)),c(seq(0.4,0.6,length.out=4)), pch=NA,type="b")
text((c(2,0.5,0.2,0.05)),c(seq(0.4,0.6,length.out=4)),c("2","0.5","0.2","0.05"))
points((c(2,0.5,0.15,0.05)),c(seq(0.3,0.5,length.out=4)), pch=NA,type="b")
text((c(2,0.5,0.15,0.05)),c(seq(0.3,0.5,length.out=4)),c("2","0.5","0.15","0.05"))
points((c(2,0.5,0.1,0.02)),c(seq(0.2,0.4,length.out=4)), pch=NA,type="b")
text((c(2,0.5,0.1,0.02)),c(seq(0.2,0.4,length.out=4)),c("2","0.5","0.1","0.02"))
points((c(1.004277,0.3694528,0.1359141,0.05)),c(seq(0.1,0.3,length.out=4)), pch=NA,type="b")
text((c(1.004277,0.3694528,0.1359141,0.05)),c(seq(0.1,0.3,length.out=4)),c("1.00","0.37","0.14","0.05"))
points((c(1.35,0.45,0.15,0.05)),c(seq(0.0,0.2,length.out=4)), pch=NA,type="b")
text((c(1.35,0.45,0.15,0.05)),c(seq(0.0,0.2,length.out=4)),c("1.35","0.45","0.15","0.05"))



effectmag <- 0.95
numtreats <- 4
startinglow <- 0.05
factorstart <- exp(1)

df <- data.frame(effmag=seq(1,1-effectmag,length.out=numtreats))
df$treatstart <- startinglow
df$factor <- factorstart
df$ID <- as.numeric(row.names(df))-1
df$treat <- df$treatstart*(df$factor^df$ID)
#df
plot(1,1,pch=NA, ylim=c(0,1),xlim=c(min(df$treat),max(df$treat)),xlab="log visualized conc",ylab="effect",log="x")
points(effmag~treat, data=df, pch=NA, type="b")
text(effmag~treat, data=df, bquote(.(round(df$treat,3))))
