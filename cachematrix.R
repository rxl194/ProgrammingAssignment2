## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL # initialize  inverse to null
  
  # set the value of the matrix
  set <- function(y) {  
    mat <<- y
    inverse <<- NULL
  }
  
  # return the value of the matrix
  get <- function() {
    mat
  }
  
  #set(cache) the value of the inverse of the matrix
  setInv <- function(cache) {
    inverse <<- cache
  }
  
  #return the value of the inverse of the matrix
  getInv <- function() {
    inverse 
  } 
  
  #return the special matrix
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  #  First check to see if the inverse has already been calculated.
  inverse <- mat$getInv()
  
  # if the inverse has already been calculated and cached, 
  # return this instance
  if (!is.null(inverse)) {
    
    message("getting the cached matrix")
    return(inverse)
  }
  
  # if it is not cached, calculate it using solve() and cache the matrix,
  # then return it
  inverse <- solve(mat$get(), ...)
  mat$setInv(inverse)
  
  ## Return a matrix that is the inverse of 'x'
  inverse
}
