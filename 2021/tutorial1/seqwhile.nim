var array1 = [1, 5, 20]
array1[0] = 100
echo array1, '\n', array1.type

for i in array1:
  stdout.write i, '\n'


# sequences (vectors?)
var
  seqA: seq[string] = @["Prophecy", "Dreams", "Divination"]
  seqB: seq[int] = @[1, 2, 4]

echo seqA
echo seqB

for elem in seqA:
  stdout.write elem, '\n'

for elem in seqB:
  stdout.write elem, '\n'

seqB.add 1000

for elem in seqB:
  stdout.write elem, '\n'

var i = 0
while i < 10:
  if i mod 2 == 0:
    stdout.write i
  inc(i)
