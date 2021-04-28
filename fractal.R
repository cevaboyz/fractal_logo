### function to create empty canvas

emptyCanvas <- function(xlim, ylim, bg="gray30")
  
  {
    par(mar=rep(1,4), bg=bg)

    plot(1, type = "n", bty = "n", xlab = "", ylab = "", xaxt = "n", yaxt = "n", xlim = xlim, ylim = ylim)
  
  }

