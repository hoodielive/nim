
var a: array[0..1, char]

let i = 5

try:
  a[i] = 'N'
except IndexDefect:
  echo "invalid index"


