##  A pair of functions that cache the inverse of a matrix

##  Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL               #inversion
        set <- function(y){       #setting the value of the matrix
                x <<- y           
                inv <<- NULL
        }
        get <- function() {x}      #getting the value of the matrix
        
        
        setInverse <- function(inverse) {inv <<- inverse} #setting the value of the inverse
        
        getInverse <- function() {inv}                  # getting the value of the inverse
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
