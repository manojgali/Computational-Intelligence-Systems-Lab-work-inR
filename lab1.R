#Carry out various arithmetic operations on complex numbers
x=complex(10,15:25,1:15)
x[1]+x[2]   #addition
x[3]-x[4]   #subtraction
x[5]*x[6]   #multiplication
x[7]/x[8]   #division

#Try to display any decimal value in binary/octal and hexadecimal format using R Tool
convert_to_bin <-function(n){
  if(n >1){
    convert_to_bin(as.integer(n/2))
  }
  cat( n %% 2)
}

convert_to_bin(112234)

as.hexmode(112234)
as.octmode(112234)
