## Put comments here that give an overall description of what your
## functions do

## This function is used to cache the inverse of a matric

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
 	x <<- y
 	i <<- y
 	i <<- NULL
	}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set=set, get=get, setinverse=inverse, 	getinverse=getinverse)
}


## computes inverse and sets in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)) {
		message("got cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data)
	x$setinverse(i)
	i
}
