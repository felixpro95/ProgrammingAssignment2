## My function creates a special “matrix” object that can cache its ##inverse and computes the inverse of the special "matrix" returned by ##makeCacheMatrix function.

##This function creates the special ”matrix” object called 
## makeCacheMatrix.

makeCacheMatrix <- function(x = matrix()) {
  
  inv_m<-NULL
   
     set<-function(y){
      
          x<<-y
       
               inv_m<<-NULL
 
}

get<-function()x
    
  setsolve<-function(solve)inv_m<<-solve
        
          getsolve<-function()inv_m
            
            matrix(set=set, get=get,setsolve=setsolve,getsolve=getsolve)
 
}


##This function calculates the inverse of the special "matrix" created
 ##by the above function 

cacheSolve <- function(x, ...) {
  
      inv_m<-x$getsolve()
        
          if(is.null(inv_m)){
            
              message("getting cached data")

 return(inv_m)

}
## This is part of the function that returns the calculated inverse

data<-x$get()
     
       inv_m<-solve(data,...)
 
           x$setsolve(inv_m)
inv_m

}
