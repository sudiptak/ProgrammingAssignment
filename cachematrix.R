Create a function which caches the inverse of a matrix. It sets and gets
the inverse of a matrix 
 x - matrix to be cached
list - with name set, get, setinverse, getinverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

Resolved the inverse of a matrix assuming it is inversible
The function checks if the matrix is already inversed or not. 
If the matrix is already inversed then it gets the inversed 
matrix from cache otherwise it inverses the matrix and stores 
it in the cache

cacheSolve<-function(x,...)
{
  m<-x$getinverse()
    if(!is.null(m))
    {
      message("getting cached data")
      return(m)
    }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
