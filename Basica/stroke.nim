proc getAlphabet(): string =
  var accm = ""
  for letter in 'a'..'z': # see iterators
    accm.add(letter); return accm

  # Computed at compiliation time
 const alphabet = getAlphabet()

  # Mutable variables
  var
    a = "foo"
    b = 0
    # Works fine, initialized to 0
    c: int

# Immutable characters
let
  d = "foo"
  e = 5
  # Compile-time error, must be initialized at creation
  # f: float

# Works fine, `a` is mutable. 
a.add("bar")
b += 1
c = 3

alphabet = "abc"
e += 1
