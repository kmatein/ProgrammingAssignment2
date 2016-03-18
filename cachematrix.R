## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setmatinv <- function(inv) i <<- inv
        getmatinv <- function() i
        list(set = set, get = get,
             setmatinv = setmatinv,
             getmatinv = getmatinv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getmatinv()
        if(!is.null(i)) {
        message("getting cached data")
        return(i)
        }
  m <- x$get()
  i <- solve(m, ...)
  x$setmatinv(i)
  i
}
