let number = 1
let name = "String"
let decimal = 1.0
let booleanvar = false 

echo number

echo "The whole number is", number

var nameAgain: string = "Lawrence"

# Nim does have type inference.

var a: int = 1

# However.
var b = 7 # is permitted.

echo b, a

echo nameAgain

var # runs at run time.
  f = -3
  g = 3
  e = 99
  h: string = "error in this"

echo "f\n"

const BUFFER: int = 4 # runs at compile time because it's const
let memset = 334 # doesn't need to be known at compile but value doesn't change.


# Integers

let 
  ai = 11
  bi = 4

echo "ai + bi = ", ai + bi
echo "ai mod bi = " , ai mod bi
echo "ai div bi = ", ai div bi
echo "ai * bi =", ai * bi
echo "ai / bi =", ai / bi
echo "ai - bi =", ai - bi

# Floats

let
  curry: float = 6.75
  durry: float = 2.25

echo "Curry is: ", curry + durry
echo "Durry is: ", durry + curry div curry

