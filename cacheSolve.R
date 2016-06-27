### This function computes the inverse of a special "matrix" returned by 
### makeCacheMatrix.R. If the inverse has already been calculated (and the 
### matrix has not been changed), then the cacheSolve will retrieve the inverse
### from the cache.

# 'x' - matrix that has already been through makeCacheMatrix.R
cacheSolve = function(x, ...)
{
  # Return the inverse of x
  inv = x$getInverse()
  
  # If the inverse exist, return the inverse, 'inv'
  if(!is.null(inv))
  {
    message("getting cached data")
    return(inv)
  }
  
  # If the inverse doesn't exist, calculate, return, and set the inverse, 'inv'
  else
  {
    matrix = x$get() #Return the matrix
    inv = solve(matrix, ...) #Find the inverse
    x$setInverse(inv) #Set the inverse
    return(inv)
  }
}