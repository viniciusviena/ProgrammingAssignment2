## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set<- function(y) {
x<<-y
m <<-NULL}

getmatrix <- function() x
setmatrixinverse <- function(inverse) m <<-inverse
getinverse <- function() m
list(set = set,getmatrix = getmatrix,setmatrixinverse = setmatrixinverse,
getinverse = getinverse )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()
if (!is.null(m)) {
message("getting cached data")
return(m)
}

data <- x$getmatrix()
m <- solve(data)
x$setmatrixinverse(m)
m
}

