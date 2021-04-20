
type
  someObject = object
    name: string
    age: int

var 
  oDeclaration: someObject
  oInitialization: someObject = someObject()
  oJod: someObject = someObject(name: "Johnny", age: 21)

echo oDeclaration
echo oInitialization
echo oJod
oJod.name = "Person"
echo oJod
oJod.reset
echo oJod

import hidden

var
  hiddenFieldObject2 = Connection(name: "lol", id: 21)

# if obj1 of Person1:
#   echo "They are the same"
# else: 
#   echo "They are not the same"