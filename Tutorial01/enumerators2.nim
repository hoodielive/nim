type
  Direction = enum
    east, west, north, south
  Tower = enum
    unoccupied, occupied

var
  level: array[Direction, array[Direction, Tower]]

echo level
