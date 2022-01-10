var list = newSeq[string](3)
assert list[0] == ""
list[0] = "Foo"
list[1] = "Bar"
list[2] = "Baz"

list.add("Lorem")

let list2 = @[4, 8, 15, 16, 23, 42]
for i in 0 .. list2.len - 1:
  stdout.write($list2[i] & " ")
