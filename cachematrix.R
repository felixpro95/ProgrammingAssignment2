## My function creates a special “matrix” object that can cache its inverse and computes the ##inverse of the special "matrix" returned by makeCacheMatrix function.


## Write a short comment describing this function
This function creates the special”matrix”object

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function()x
setsolve<-function(solve)m<<-solve
getsolve<-function()m
matrix(set=set, get=get,setsolve=setsolve,getsolve=getsolve)
}

## Write a short comment describing this function
##This function calculates the inverse of the special "matrix" created with the above function

cacheSolve <- function(x, ...) {
  m<-x$getsolve()
    if(is.null(m)){
        message("getting cached data")
 return(m)
}

data<-x$get()
   m<-solve(data,...)
 x$setsolve(m)
m

}
