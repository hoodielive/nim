var age: int = 18
let ageDesc = if age < 18: "None Adultus" else: "Adultus"

const love = 1

case love
  of 1:
    echo "Male"
  of 2:
    echo "Female"
  of 3:
    echo "Hybrid"
  else:
    echo "Nothing reported"

echo ageDesc

var i: int = 0
while i < 3:
  echo i
  i.inc

block label: 
  var i = 0
  while true:
    while i < 5:
      if i > 3: break label
      i.inc

iterator values(): int =
  var i = 0
  while i < 5:
    yield i
    i.inc

for value in values(): echo value

import os

for filename in walkFiles("*.nim"):
  echo filename

# __iter__:

for item in @[1, 2, 3]:
  echo item

for i, value in @[1, 2, 3]: echo "Value at ", i, ": ", value
