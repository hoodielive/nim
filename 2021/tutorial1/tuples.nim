var
  someTuple = (10, 0.55, true, "hello")
  anonTuple: (string, int) = ("Jon Doe", 22)
  namedTuple: tuple[name: string, age: int] = ("Adam", 25)
  emptyTuple: tuple[name: string, age: int] # Just to showcase an emptyTuple

echo someTuple
echo anonTuple
echo namedTuple

namedTuple.name = "Peyter"
namedTuple.age = 19

echo namedTuple

type
  customTuple = tuple
    name: string
    age: int


var aTuple: customTuple = ("custom", 60)
echo aTuple

var tupleArray: array[2, customTuple]
tupleArray[0] = (name: "Jon Doe", age: 20)
tupleArray[1] = (name: "Jane Doe", age: 21)

echo tupleArray
for i in tupleArray:
  stdout.write i, '\n'

var tupleSequence: seq[customTuple]
tupleSequence.add (name: "That", age: 32)
tupleSequence.add (name: "That", age: 23)

echo tupleSequence
