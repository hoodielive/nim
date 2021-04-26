import strutils, sequtils

let multiLine = """ Oyeku
  Ogbe
  Owonrin
""".unindent

echo multiLine
echo multiLine.type

var number: int 

number = 3

echo number
echo number.type

proc fillString(): string =
  result = ""
  echo "Generating a string"
  for i in 0 .. 4:
    result.add($i)

const count = fillString()
echo count

proc youMustUseMe(name: string): string =
  echo "Did you use me? "

proc iJustWantYouToUseMe = echo "no" # Note no () when no parameters are needed.

discard youMustUseMe("Larry") # Could also just remove the return string directive.
iJustWantYouToUseMe()

proc implicitly: string = "I will be returned"

proc discarded: string = discard
  "I will not be returned"

proc explicit: string = return "I will be returned"

proc resultVar: string = "I will be returned"

proc resultVar2: string =
  result = ""
  result.add("I will be")
  result.add(" returned")

#[ proc resultVar3: string =
  result = " I am the result"
  "I will cause an error."
]#

assert implicitly() == "I will be returned"
assert discarded() == ""
assert explicit() == "I will be returned"
assert resultVar() == "I will be returned"
assert resultVar2() == "I will be returned"

proc message(recipient: string): auto =
  "Hello " & recipient

assert message("Osa") == "Hello Osa"
discard message("Osa")
echo message.type

proc max(a, b: int): int =
  if a > b: a else: b

assert max(5, 10) == 10
discard max(100, 5000000)

proc genHello(names: varargs[string]): auto =
  result = ""
  for name in names:
    result.add("Hello " & name & "\n")

let resulting = genHello("Coco", "Brittany", "Sole")
echo  resulting
echo resulting.type

proc getUserCity(userID: int): string =
  case userID:
    of 1: return "Tokyo"
    of 2: return "New York"
    else: return "Unknown"

assert getUserCity(1) == "Tokyo"
let gotUserCity = getUserCity(1)
echo gotUserCity

#doAssert getUserCity(1, 2) == "Tokyo"
doAssert getUserCity(2) == "New York"


let numbers = @[1, 2, 3, 4, 5, 6]
let odd = filter(
  numbers, 
  proc(x: int): bool = x mod 2 != 0
)

echo odd
echo odd.type