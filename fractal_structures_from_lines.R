# function to add a new line to an existing one

newLine <- function(line, angle, reduce = 1)

  {
      
    x0 <- line[1]
    y0 <- line[2]
    x1 <- line[3]
    y1 <- line[4]
  
    dx <- unname(x1 - x0)
    dy <- unname(y1 - y0)
    
    l <- sqrt(dx^2 + dy^2)
    
    theta <- atan(dy/dx) * 180 / pi
    rad <- (angle + theta) * pi / 180
    
    coeff <- sign(theta)*sign(dy)
    if(coeff == 0) coeff <- -1
    
    x2 <- x0 + coeff*l*cos(rad)*reduce + dx
    y2 <- y0 + coeff*l*sin(rad)*reduce + dy
    
    return(c(x1,y1,x2,y2))
    
  }

# example
a = c(-1.2,1,1.2,1)
b = newLine(a, angle=-90, reduce=1)
c = newLine(b, angle=45, reduce=.72)
d = newLine(c, angle=90, reduce=1)
e = newLine(d, angle=45, reduce=1.4)

# draw lines
emptyCanvas(xlim=c(-5,5), ylim=c(0,5))
drawLine(a, lwd=3, col="white")
drawLine(b, lwd=3, col="orange")
drawLine(c, lwd=3, col="cyan")
drawLine(d, lwd=3, col="firebrick")
drawLine(e, lwd=3, col="limegreen")

