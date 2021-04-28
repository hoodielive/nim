# If a procedure needs to modify a parameter arg, it must use a var param instead.

proc divmod(a, b: int, res, remainder: var int) =
  res = a div b
  remainder = a mod b

var
  x, y: int
divmod(8, 5, x, y)

echo x
echo y

proc yes(question: string): bool =
  echo question, "(y/n)"


discard yes("May I ask you a pointless question?")
