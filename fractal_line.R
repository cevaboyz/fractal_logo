# function to draw a single line

drawLine <- function(line, col = "white", lwd = 1)

  {
    segments(x0 = line[1], y0 = line[2], x1 = line[3], y1 = line[4], col = col, lwd = lwd)
  }

# wrapper around "drawLine" to draw entire objects

drawObject <- function(object, col = "white", lwd = 1)
  
{
  invisible(apply(object, 1, drawLine, col = col, lwd = lwd))
}


##example
##emptyCanvas(xlim=c(-5,5), ylim=c(-5,5))
##drawObject(mat, col="yellowgreen", lwd=3)