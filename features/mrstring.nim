import strutils

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

discard youMustUseMe("Larry") # Could also just remove the return string directive.