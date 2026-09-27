# PA4
# Andrew Zachman
# 2026.09.27
# Sweet spot plot with various point and line types

#install.packages("ggplot2")
#library(ggplot2)

# vectors for plot data points
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
       -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)

# blank plot table
plot(x,y,type="n",
     main="",xlab = "",ylab = "")

# red dotted weighted line, y
abline(h=c(-5,5),col="red",lty=2,lwd=2)

# red dotted weighted line, segmented x
segments(x0=c(5,15),y0=c(-5,-5),x1=c(5,15),y1=c(5,5),col="red",lty=3,
              lwd=2)

# points >=5
points(x[y>=5],y[y>=5],pch=4,col="darkmagenta",cex=2)

# points <=5
points(x[y<=-5],y[y<=-5],pch=3,col="darkgreen",cex=2)

# points within parameters
points(x[(x>=5&x<=15)&(y>-5&y<5)],y[(x>=5&x<=15)&(y>-5&y<5)],pch=19,
       col="blue")

# points outside of parameters
points(x[(x<5|x>15)&(y>-5&y<5)],y[(x<5|x>15)&(y>-5&y<5)])

# line connecting vector points
lines(x,y,lty=4)

# arrow
arrows(x0=8,y0=14,x1=11,y1=2.5)

# sweet spot text
text(x=8,y=15,labels="sweet spot")

# legend for plot
legend("bottomleft",
       legend=c("overall process","sweet","standard",
                "too big","too small","sweet y range","sweet x range"),
       pch=c(NA,19,1,4,3,NA,NA),lty=c(4,NA,NA,NA,NA,2,3),
       col=c("black","blue","black","darkmagenta","darkgreen","red","red"),
       lwd=c(1,NA,NA,NA,NA,2,2),pt.cex=c(NA,1,1,2,2,NA,NA),
       cex=0.75)

