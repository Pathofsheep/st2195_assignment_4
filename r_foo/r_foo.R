
#radius
r = 2

# Function to compute the volume of a sphere with radius r
volume = function(r) 
{
  result= (4/3) * pi * r^3 
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
