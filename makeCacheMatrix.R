### This function creates a special "matrix" object that can cache its inverse. 
### This function returns four functions:
###    (1) Set the matrix to a new matrix, 
###    (2) return the matrix, 
###    (3) set the inverse of a matrix, and
###    (4) return the inverse of a matrix.

# 'x' - input square matrix, assume it's invertible
makeCacheMatrix = function(x = matrix())
{
  # Set the inverse to NULL
  inv = NULL
  # (1) Function to replace the matrix(x) as 'y', also invertible and square
  set = function(y)
    {
      x <<- y
      inv <<- NULL
  }
  # (2) Returns matrix
  get = function() x
  # (3) Set the inverse of the matrix to 'inverse'
  setInverse = function(inverse) inv <<- inverse
  # (4) Return the inverse of the matrix. NULL if not known.
  getInverse = function() inv
  
  # Return the lsit of all the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}