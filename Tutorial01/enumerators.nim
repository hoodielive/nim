# Ordial returns value stored in context.
# .succ returns succesor.
# .pred returns predecessor.

type
  Direction = enum
    east, north, west, south

echo Direction.east


var
  direction: Direction
  #direction = Direction.north
  direction2 = east.succ
  direction3 = north.succ
  direction4 = east.ord
  directionaless: array[Direction, string]
  nestedArray: array[2, array[2, int]]

echo direction
echo direction2
echo direction3
echo direction4


directionaless[east] = "First"
directionaless[south] = "Fourth"

echo directionaless

echo nestedArray
nestedArray[0][0] = 10
nestedArray[1][1] = 10
echo nestedArray
