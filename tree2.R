# iterator function: recursive tree

tree <- function(line0, angle = 30, reduce = .7, randomness = 0)
  
{
  angle1 <- angle+rnorm(1,0, randomness) #left branch
  
  angle2 <- -angle+rnorm(1,0,randomness) #right branch
  
  line1 <- newLine(line0, angle=angle1, reduce = reduce)
  
  line2 <- newLine(line0, angle=angle2, reduce=reduce)
  
  mat <- matrix(c(line1,line2), byrow = T, ncol = 4)
  
  return(mat)
  
}

set.seed(1234)
fractal <- matrix(c(0,0,0,10), nrow=1)
emptyCanvas(xlim=c(-30,30), ylim=c(0,35))
lwd <- 7
drawObject(fractal, lwd=lwd)
for(i in 1:12) {
  lwd <- lwd*0.75
  fractal <- iterate(fractal, ifun=tree, angle=29, randomness=9)
  drawObject(fractal, lwd=lwd)
}

