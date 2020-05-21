## Put comments here that give an overall description of what your
## functions do
# # y luego establezca el valor resuelto "s" como nulo
# # luego cambié cada referencia a "mean" para "resolver"
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  e <- NULL
  set <- function(l) {
    x <<- l
    e <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) e <<- solve
  getsolve <- function() e
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##  permite obtener la matriz inversa
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("matrix inversa")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}