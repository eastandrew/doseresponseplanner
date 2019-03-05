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



numtreats <- 4
effectmag <- 0.2
propdiffe <- exp(1)
propdiff3 <- 3
propdiff10 <- 10
propdiff2 <- 2
startinglow <- 0.05

plot(1,1,pch=NA, ylim=c(0,1),xlim=c(startinglow,startinglow*propdiff2^(numtreats-1)),xlab="log visualized conc",ylab="effect",log="x")
points(c(startinglow,startinglow*propdiff2,startinglow*propdiff2^2,startinglow*propdiff2^3),
       c(seq(1,1-effectmag,length.out=numtreats)),
       pch=NA,
       type="b")
text(c(startinglow,startinglow*propdiff2,startinglow*propdiff2^2,startinglow*propdiff2^3),
     c(seq(1,1-effectmag,length.out=numtreats)),
     c(bquote(.(startinglow)),bquote(.(startinglow*propdiff2)),bquote(.(startinglow*propdiff2^2)),bquote(.(startinglow*propdiff2^3))))
