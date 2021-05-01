type 
  Answer = enum 
    aYes
    aNo

proc ask(question: string): Answer =
  echo question, "(y/n)"
  while true:
    case stdin.readLine()
    of "y", "Y", "yes", "Yes":
      return Answer.aYes
    of "n", "N", "no", "No": 
      return Answer.aNo
    else: echo "Please be clear: yes or no"

proc addSugar(amount: int = 2): int =
  assert(amount > 0 and amount < 9000, "Crazy Sugar")
  for a in 1 .. amount:
    echo a, " sugar..."

case ask "Would you like sugar in your tea?"  
of aYes: 
  discard addSugar(3)
of aNo:
  echo "Oh do take a little!"
  discard addSugar()

proc strcmp(a, b: cstring): cint {.importc: "strcmp", nodecl.}
let cmp = strcmp("C?", "Easy!")