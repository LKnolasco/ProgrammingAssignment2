## first, cache the inverse of a matrix
## the functions should be able to
## cache its inverse and 
## create a special matrix object
## the function should be makeCacheMatrix to get the matrix
## this function is said to create a
## special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
        x <<- y
        inv <<- NULL
  }
  get <- function() {x}
  setInverse <- funtion(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse =getInverse)
}

## the next function is cachesolve
## it calculates the inverse that is 
## returned by makeCacheMatrix above.
## in order to retrive the inverse of the cache, 
## we need to observe if the matrix
## has not been change after
## the inverse of the special "matrix"
## object has been calculated.

cachesolve <- function(x, ...){
    inv <- x$getInverse()
    if(!is.null(inv)){
          message("getting cached data")
          return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
}
