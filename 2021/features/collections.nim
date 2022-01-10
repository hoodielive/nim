var list: array[3, int]

list[0] = 1
list[1] = 42

assert list[0] == 1
assert list[1] == 42
assert list[2] == 0

echo list.repr
echo list[2]


var howdy = ["Hello", "There"]
echo howdy

var spirits: array[4, string] = ["mpungos", "orishas", "lwa", "egun"]

# loops over index
for i in spirits.low .. spirits.high: 
  stdout.write $i

# loops over content
for i in spirits: stdout.write '\n' & i