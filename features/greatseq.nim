# arrays are static and assigned to stack.
# seq are dynamic and are assigned to heap (gc)

var list: seq[int] = @[]

list.add(1)
assert list[0] == 1
echo list[1]

