# iterator function: recursive tree

tree <- function(line0, angle = 30, reduce = .7, randomness = 0)
  
  {
    angle1 <- angle+rnorm(1,0, randomness) #left branch
    
    angle2 <- -angle+rnorm(1,0,randomness) #right branch
    
    line1 <- newLine(line0, angle = angle1, reduce = reduce)
    
    line2 <- newlLine(line0, angle = angle2, reduce = reduce)
    
    mat <- matrix(c(line1,line2), byrow = T, ncol = 4)
    
    return(mat)
  
    }

