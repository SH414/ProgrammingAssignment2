## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}



makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  Set <- function(y) {
    x <<- y
    i <<- NULL
  }
  Get <- function() x
  SetInverse <- function(inverse) i <<- inverse
  GetInverse <- function() i
  list(Set = Set,
       Get = Get,
       SetInverse = SetInverse,
       GetInverse = GetInverse)
}


cacheSolve <- function(x, ...) {
  i <- x$GetInverse()
  if (!is.null(i)) {
    message("get cached data")
    return(i)
  }
  TestMatrix <- x$Get()
  i <- solve(TestMatrix, ...)
  x$SetInverse(i)
  i
}