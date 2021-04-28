# range is a container.

for e in countUp(1, 10):
  echo e

for e in countDown(10, 1):
  echo e


iterator cUp(x, y: int): int =
  var a = x
  while a <= y:
    yield a
    inc a

for i in cUp(0, 5):  
  echo i

for p in items([2, 5, 7]):
  echo p

for x, y in [ [ 1, 3, 5], [ 2, 4, 6] ].pairs:
  echo x, y