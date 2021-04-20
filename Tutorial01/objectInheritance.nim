type
  Person1 = object
    name: string
    age: int

type
  Person = object of RootObj # Parent
    name: string 
    age: int

  Student = object of Person #Child/descendent
    id: int

# Demonstration via variables.
var adam = Person(name: "Adam", age: 54)
var eve = Student(name: "Eve", age: 53, id: 1033)

echo adam
echo eve