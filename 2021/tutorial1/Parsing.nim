import strutils

var stringInteger = "100"
var stringFloat = "0.25"

var parsedInteger: int
var parsedFloat: float

parsedInteger = stringInteger.parseInt
parsedFloat = stringFloat.parseFloat

echo parsedInteger, " , ", parsedInteger.type
echo parsedFloat, " , ", parsedFloat.type

echo parsedInteger.toFloat + parsedFloat

echo("Type Something: ")
#let data = readLine(stdin)
let data = stdin.readLine
echo data

echo "First Number: "
let number1 = stdin.readLine
let parsedNumber1 = number1.parseInt

echo "Second Number: "
let number2 = stdin.readLine.parseInt

let sum = parsedNumber1 + number2
echo sum
