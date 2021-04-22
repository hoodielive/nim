var a: array[0..1, char]
let i = 5

try: 
  a[i] = 'N' # Creates an out-of-bounds error

except IndexDefect:
  echo "invalid index"