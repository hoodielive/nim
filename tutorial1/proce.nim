proc hello() =
  echo "Hello"

hello()

proc hello2(name: string) =
  echo name

hello2("Jon Doe")

proc sum(num1: int, num2: var int): int =
  num2 = 10
  result = num1 + num2
  return result

var a = 10
echo sum(1, a)

proc multiSum(numbers: varargs[int]): int =
  for n in numbers:
    result += n

echo multiSum(1, 2, 3, 4)

