# Procedures overloading, what it is and how to do it.

proc sum(x, y: int): int =
  result = x + y

proc sum(x, y: float): float =
  result = x + y

proc sum(x, y: string): string =
  result = x & y

proc sum(x, y: string, c: string): string =
  result = x & y & c

proc sum(x, y: string, c: int): string =
  result = x & y & $c

echo sum(1, 1)
echo sum(0.1, 1.9)
echo sum("Jon Doe", "Jane Doe")
echo sum("Jon Doe", "Jane Doe", "123")
echo sum("Jon Doe", "Jane Doe", 123)