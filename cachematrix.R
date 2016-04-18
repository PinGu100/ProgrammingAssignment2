## the two functions create a object that stores a matrix and cache's its inverse.

## makeCacheMatrix function set the value of matrix, get the value of matrix,
## set the value of the inverse, and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## cacheSolve function calculates the inverse of the matrix created by the above function.
## If the inverse exists, it gets the inverse from the cache.
## Otherwise, it caclulates the inverse and set the inverse in the cache.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)   
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m  
    ## Return a matrix that is the inverse of 'x'
}
