## My function creates a special “matrix” object that can cache its inverse and computes the inverse of the special "matrix" returned by makeCacheMatrix function.

##This function creates the special ”matrix” object called 
## makeCacheMatrix.

makeCacheMatrix <- function(x = matrix()) {
  
  i<-NULL
   
     set<-function(y){
      
          x<<-y
       
               i<<-NULL
 
}

get<-function()x
    
  setsolve<-function(solve)i<<-solve
        
          getsolve<-function()i
            
            matrix(set=set, get=get,setsolve=setsolve,getsolve=getsolve)
 
}


##This function calculates the inverse of the special "matrix" created
 ##by the above function 

cacheSolve <- function(x, ...) {
  
      i<-x$getsolve()
        
          if(is.null(i)){
            
              message("getting cached data")

 return(i)

}
## This is part of the function that returns the calculated inverse

data<-x$get()
     
       i<-solve(data,...)
 
           x$setsolve(i)
i

}
