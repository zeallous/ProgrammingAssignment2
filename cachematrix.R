##makeCacheMatrix: This function creates a special 
##"matrix" object that can cache its inverse.

##cacheSolve: This function computes the inverse of the special "matrix" 
##returned by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## makeCacheMatrix - creates a matrix and caches it's inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #sets the inverse of the matrix
  set <- function(y) {
    x <<- solve(y)
    m <<- NULL
  }
  #gets the matrix
  get <- function() x

}


##cacheSolve: This function computes the inverse of the special "matrix" 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$get()
        if(x == solve(m)) {
          #inverse exists
          message("getting the inverse")
          return(m)
        }
        data <- x$get()
        #computes the inverse the matrix
        x$set(solve(data))
        m
}
