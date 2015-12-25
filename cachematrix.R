## Put comments here that give an overall description of what your
## functions do

## The function makes a "matrix" were the object cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	joris_invoer <- NULL
	set <- function(a) {
		x <<- a
		joris_invoer <<- NULL
	}
	get <- function() a
	setInverse <- function(inverse) joris_invoer <<- inverse
	getInverse <- function() joris_invoer
	list(set = set, 
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}


## The inverse of the matrix made bij the makeCacheMatrix above, it will 
## give back the inverse off the cache.  

cacheSolve <- function(x, ...) {
        joris_invoer <- x$getInverse()
        if (!is.null(joris_invoer)) {
## Return a matrix - inverse from 'x'
                message("getting cached data")
                return(joris_invoer)
        }
        mat <- x$get()
        joris_invoer <- solve(mat, ...)
        x$setInverse(joris_invoer)
        joris_invoer
}
