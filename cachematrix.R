## The function checks if inverse of matrix present in cache. If yes, it gets the data from cache else it will calculate the inverse of the matrix

#makeCacheMatrix creates inverse of a matrix and store it in cache
makeCacheMatrix <- function(x = matrix()) {

m<-NULL
set<-function(y){
	
	x<<-y
	m<<-NULL
}

get<-function() x
setsolve<-function(solve) m<<-solve
getsolve<-function() m
list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)

}


## Write a short comment describing this function

#The cacheSolve matrix checks if inverse is present in cache,else it will create one

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getsolve()
        if(!is.null(m)){
        	message('getting cached inverse matrix')
        	return(m)
          }
          data<-x$get()
          m<-solve(data,...)
          x$setsolve(m)
          m
        
}
