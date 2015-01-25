## this functions makes your data available to cache the inverse of a matrix
## 

## This function creates a matrix that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {
        invM<-NULL                                 #default value --inverse matrix value
        setMatrix <- function(y)                   #setmatrix and reset invM
        {
                matrix<<-y
                invM<-NULL   
        } 
        getMatrix <- function() matrix             # returns matrix
        setinverse <- function(inv)inverse <<- inv # sets inverse to its input
        getinverse <- function() inverse           # returns inverse 
        
        list(set = set, get = get, setinv = setinverse, getinv = getinverse) # return list of functions
        }
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getinv()                           # get inverse matrix from cache
        if (!is.null(inv))                          # if inverse matrix existed
        {
                message("This is from the Cache")
                return(inv)                         # return cached inverse
        }
        
        data <- x$get()                             # get cached matrix
        inv    <- solve(data, ...)                  # caclulate inverse
        
        x$setinv(inv)                               # set the inverse matrix to cache
        inv                                         # return the inverse matrix
        ## Return a matrix that is the inverse of 'x'
}
