import tables

var
  ioTable = {"output": stdout, "input": stdin}.toTable
  roman = {'M': 1000, 'D': 100, 'L': 50, 'X': 10, 'V': 5, 'I': 1}.toTable
  romanOrdered = {'M': 1000, 'D': 100, 'L': 50, 'X': 10, 'V': 5,
      'I': 1}.toOrderedTable
  romanCount = {'M': 1000, 'D': 100, 'L': 50, 'X': 10, 'V': 5,
      'I': 1}.toCountTable

ioTable["output"].write "Some Text"
# let data = ioTable["input"].readLine
# echo data

for r in roman.pairs:
  echo r

for r in romanOrdered.pairs:
  echo r

for r in romanCount.pairs:
  echo r

if roman.hasKey 'Q': # The same can be done with romanOrdered.
  echo "Found Key Q."
else:
  echo "Key not found."
