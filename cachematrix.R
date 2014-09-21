These set of functions can be used to calculate matrix inversions faster.
It does so by cacheing the caculated matrix inverse.
So eventhough you want the matrix inverse several times, we just calculate it once and 
store the result. Hence there is no need to calculate the same thing again.

## This function is used to create a cacheMatrix and takes in a matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    mat <<- y
    inv <<- NULL
  } 
  get <- function() {
    mat
  }
  getInv <- function(){
    inv
  }
  setInv <- function(inverse) {
    inv <<- inverse
  }
  list(get = get, set = set, getInv = getInv, setInv = setInv)
}


## This function ensures that the inverse is only calculated once.

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
  inverse = mat$getInv()
  if (!is.null(inverse)){
    inverse
  }
  else {
    inverse <- solve(mat$get(), ...)
    mat$setInv(inverse)
    inverse
  }
}
