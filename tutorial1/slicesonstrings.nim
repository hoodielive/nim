var
  num1 = 10
  num2: float = 0.55
  someString = $num1
  longerString = "Hello World"
  sequence1: seq[int] = @[0, 1, 2, 3]

echo someString & "Hello"
echo $num1 & $num2

someString.add "More String"
echo someString


echo longerString[4 .. 8]
echo longerString[longerString.low .. longerString.high]
echo sequence1[1 ..< 3]


