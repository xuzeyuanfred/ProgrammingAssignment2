## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#This function creates a special "matrix" object that can cache its inverse.
#this function contains all 4 functions that can be used to 
#access the original matrix x and its inverse m (if inverse function is applied)
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	#change the value of x
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
  #get the value of x 
	get <- function() x 

	#find the inverse of the function
	setinverse <- function(inverse){
		m <<- solve(x)
	}

	#return the vlue of m
	getinverse <- function() m

	list(set = set, get = get, 
		getinverse = getinverse, setinverse = setinverse)
	
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()

        if (!is.null(m)) 
          {
            message("getting cached data")
        	  return (m)
          }

        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m 
}
