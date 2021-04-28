# Object types are allocated on the stack &
# cannot be nil which is true for any data type
# that is stored on a stack.

type
  Person = object
    name: string
    age : int
    location: string

var person = Person(name: "Neo", age: 28)

echo person

type
  PersonRef = ref Person

var newperson = PersonRef(name: "325692", location: "Pittsburgh")
echo newperson.location

proc setName(person: PersonRef) =
  person.name = "Osaz"

newperson.setName()
echo newperson.name

type
  Orisha = object
    name: string
    power: string
    color: string
    ebo: string
  Lwa = tuple[name, power: string]

var ogun: Orisha = Orisha(name: "Ogunda", power: "Removal of Obstacles")
echo ogun

let oguna: Lwa = (name: "Ogunda", power: "Pray")

echo oguna.name
