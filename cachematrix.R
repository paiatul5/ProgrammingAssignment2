## Functions to set a matrix and check whether it's inverse was computed
## Two functions makeCacheMatrix and cacheSolve

## Stores a matrix, gets the matrix, sets the inverse, gets the inverse

makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
 	set <-function(y){
      	mat <<- y
      	inv <<- NULL
	}
	get <- function() {mat}
	setinv <- function(inverse) { inv <<- inverse }
	getinv <- function() {inv}
	list (set = set,get=get,setinv = setinv,getinv=getinv)

	
}


## checks wheteher the inverse is computed

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'inv <- x$getinv()
      if(!is.null(inv)){
      	message("getting cached data")
      }
      data <- x$get()
      inv <- solve(data,...)
      x$setinv(inv)
      inv

	
}
