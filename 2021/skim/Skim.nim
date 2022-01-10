var
  sum: int = 0
  i: int = 0

while i < 100: 
  inc(i, 1)
  inc(sum, i)
echo sum

type
  Time = distinct float # in seconds
  Distance = distinct float

var
  t: Time = Time(0.2)