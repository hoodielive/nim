
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
echo "Durry is: ", durry + curry


# Straight forward conversion.

let e9: int = 5
let e6: float = 23.97

echo float(e9) + e6
echo e9 + int(e6)

let orun: string = "heaven"
echo orun

echo "some\nim\tips"

echo r"some\nim\tips"

var
  p: string = "abc"
  q: string = "xy"
  r: char = 'z'

echo p, q, r

p.add("def")
echo "p is now: ", p

q.add(r)
echo "q is now: ", q

echo "concat: ", p & q

echo "p is still: ", p
echo "q is still: ", q


# Booleans
var isEmpty: bool = true
var isFinished: bool = false
var isMoving: bool = false

let
  g0 = 31
  h0 = 99

echo "g is greater than h: ", g0 > h0
echo "g is smaller than h: ", g0 < h0
echo "g is equal to h: ", g0 == h0
echo "g is not equal to h: ", g0 != h0
echo "g is greater or equal to h: ", g0 >= h0
echo "g is smaller or equal to h: ", g0 <= h0

echo "What's your name? "
var name2: string = readLine(stdin)
echo "Hello, brother ", name2

