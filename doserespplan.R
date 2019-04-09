
############  If starting and ending are known and log-scale equidistant concentrations desired #####
vect <- c()
starting <- 0.02 #starting concentration
ending <- 0.2 #ending concentration
numbertreats <- 5 #number of treatments
vect[1] <- starting #starting concentration

multiplier <- (exp((log(ending)-log(starting))/(numbertreats-1)))
for (i in 2:(numbertreats)){
  vect[i] <- vect[i-1]*multiplier
}
par(mai=c(1,1,0.1,0.1))
plot(vect,c(seq(1,0,length.out=numbertreats)), log="x", type="b", pch=NA, xlab="log visualized concentration", ylab="effect")
text(vect,c(seq(1,0,length.out=numbertreats)),round(vect,3))
text(vect[(length(vect)-1)], 0.8, bquote(paste("Factor: ",.(round(multiplier,3)))))
text(vect[(length(vect)-1)], 0.7, "OECD max = 3.2")
######################################################################################################


############# If constant multiplicative factor desired #####
numbertreats <- 5 #number of treatments
starting <- 0.02 #starting concentration
factorstart <- exp(1) #multiplicative factor

df <- data.frame(effmag=seq(1,0,length.out=numbertreats))
df$treatstart <- starting
df$factor <- factorstart
df$ID <- as.numeric(row.names(df))-1
df$treat <- df$treatstart*(df$factor^df$ID)
plot(1,1,pch=NA, ylim=c(0,1),xlim=c(min(df$treat),max(df$treat)),xlab="log visualized concentration",ylab="effect",log="x")
points(effmag~treat, data=df, pch=NA, type="b")
text(effmag~treat, data=df, bquote(.(round(df$treat,3))))
#######################################################################################################


