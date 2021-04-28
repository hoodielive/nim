type
  Subrange = range[0..5]
  PositiveFloat = range[0.0..Inf]

var family: Subrange

const str = "123456789"

for i in family.low .. family.high:
  echo str[i]

