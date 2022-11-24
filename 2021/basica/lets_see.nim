# functions

proc newFunction(a, b: int): int =
  a + b

let russia = newFunction(4, 5)
echo russia


proc yes(question: string): bool =
  echo question, " (y/n)"

  while true:
    case readLine(stdin)
      of "y", "Y", "yes", "Yes": return true
      of "n", "N", "no", "No": return false
      else: echo "Please be clear: yes or no."

  if yes("Should I delete all your important files?"):
    echo "I'm sorry, I'm afraid I can't do that."
  else:
    echo "I think you know what the proble is just as well as I do."

let yessir = yes("What is this?")
echo yessir
