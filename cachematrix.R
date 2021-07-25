
setwd('https://github.com/mcc5635/ProgrammingAssignment2-1.git')
##
## makeCacheMatrix purpose: invertible square matrix
## Returns 'x' inverse matrix
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  r <- NULL
  set <- function(y) {
    x <<- y
    r <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) r <<- solve
  getsolve <- function() r
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##
## "Solve" was substituted for "mean"
## Purpose: catche matrix inverse
cacheSolve <- function(x, ...) {
  r <- x$getsolve()
  if(!is.null(r)) {
    message("getting inversed matrix")
    return(r)
  }
  data <- x$get()
  r <- solve(data, ...)
  x$setsolve(r)
  r
}




