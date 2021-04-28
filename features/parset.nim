
var collection: set[int16]
assert collection == {}

let anewcollection = {'a', 'x', 'r'}
assert 'a' in anewcollection

let dopeCollection = { 'a', 'T', 'z' }
#let isAllLowerCase = { 'A' .. 'Z'} * dopeCollection == {}
let isAllLowerCase = { 'A' .. 'Z'} * dopeCollection == {}
assert(not isAllLowerCase)
echo not isAllLowerCase