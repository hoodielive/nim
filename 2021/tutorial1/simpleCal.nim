import strutils

echo "Excuse me fuckboy, this is a calculator, do you understand?"

let answer = readline(stdin)

if answer == "yes":
  echo "Fuck you."


var
  input: string
  num1: float
  num2: float
  result: float

while true:
  echo "Choose your action: Add, Subtract, Divide, Multiply or exit"
  input = stdin.readLine

  case input:
    of "Add":
      stdout.write "First Number: "
      num1 = stdin.readLine.parseFloat
      stdout.write "Second Number: "
      num2 = stdin.readLine.parseFloat
      result = num1 + num2
      echo result

    of "Subtract":
      stdout.write "First Number: "
      num1 = stdin.readLine.parseFloat
      stdout.write "Second Number: "
      num2 = stdin.readLine.parseFloat
      result = num1 - num2
      echo result

    of "Multiply":
      stdout.write "First Number: "
      num1 = stdin.readLine.parseFloat
      stdout.write "Second Number: "
      num2 = stdin.readLine.parseFloat
      result = num1 * num2
      echo result

    of "Divide":
      stdout.write "First Number: "
      num1 = stdin.readLine.parseFloat
      stdout.write "Second Number: "
      num2 = stdin.readLine.parseFloat
      result = num1 + num2
      echo result

    of "exit":
      break
