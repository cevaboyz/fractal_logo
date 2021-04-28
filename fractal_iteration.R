# function to run next iteration based on "ifun()"

iterate <- function(object, ifun, ...)
  
  {
    lineList <- vector("list", 0)
    
    for (i in 1:nrow(object))
      
      {
        
        old_line <- matrix(object[i,], nrow = 1)
        
        new_line <- ifun(old_line, ...)
      
        lineList[[length(lineList)+1]] <- new_line
        
      }
    
        new_object <- do.call(rbind, lineList)
      
        return(new_object)
    
    }
##ending