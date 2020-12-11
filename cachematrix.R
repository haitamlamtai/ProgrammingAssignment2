##  A pair of functions that cache the inverse of a matrix

##  Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL               #inversion
        set <- function(y){       #setting the value of the matrix
                x <<- y           
                inv <<- NULL
        }
        get <- function() {x}      #getting the value of the matrix
        
        
        setInverse <- function(inverse) 
                {inv <<- inverse}      #setting the value of the inverse
        
        getInverse <- function() {inv}  # getting the value of the inverse
        
        
        list(set = set, get = get, setInverse = setInverse, #returning a list
             getInverse = getInverse)

}


##  Compute the inverse of the special matrix returned by "makeCacheMatrix" 
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getInverse()
        
        ## Just return the inverse if its already set
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        
        mat <- x$get()  ## Get the matrix from our object 
        
        inv <- solve(mat, ...) ## Calculate the inverse using matrix multiplication
        
        x$setInverse(inv)   ## Set the inverse to the object
        
        inv     ## Return the matrix inv
}
