
#radius
r = 2

# Function to compute the volume of a sphere with radius r
volume = function(r) 
{
  result = (4/3) * pi * r^3 
  print(paste("Volume of a Sphere with radius", r, "is", result))
}

#Function to compute the volumes of the spheres with radius r, r^2 and r^3 
volume_vector = function(r) 
{
  for (i in 1:3)
  {
    volume(r^i)
  }
}


#run volume_vector(r) and print the volumes of the spheres with radius r,r^2 and r^3
volume_vector(r)


#prof. answer:
volume_vector <- function(r) {
  l <- list()
  for (p in 1:3){
    l<- append(l, volume(r^p)) }
  return(l )
}


volume_vector <- function(r) {
  l <- list()
  for (p in 1:3){
    l[p]<- volume(r^p) }
  return(l )
}

#Perimeter and area of a rectangle (doing during lesson)

#Area
area = function(a,b)
{
  return(a*b)
}

#Perimeter
perimeter = function(a,b)
{
  return(2*(a+b))
}

print(area(2,3))

print(perimeter(2,3))

#Fibonacci
fibonacci = function(count)
{
  first_no = 1
  second_no = 1
  
  result = first_no + second_no
  
  #printing the start
  print(paste(first_no,'+',second_no,'=',result))
  
  l = list() #prof. suggested vector
  for(i in 1:count)
  {
    l[i] = first_no
    #save old result here
    second_no_old = second_no
    #put result in the second number
    second_no = first_no + second_no
    #put the old result in the first number
    first_no = second_no_old
    #print to make sure it works
    print(paste(first_no,'+',second_no,'=', first_no + second_no))
    #save it in a list
  }
  return(l)
}

list = fibonacci(10)
print(list)
plot(list)

i = 0
while(result <= 100)
{
  i = i + 1 
  result = result + fibonacci()
}