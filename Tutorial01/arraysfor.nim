var
  # array declaration
  # declaration of array type and size
  # assignment
  a: array[3, int] = [1, 2, 5]

  # compiler will infer type.
  b = [1, 7, 50]

  # array declaration with no values
  d: array[7, string]

echo a, b, d

stdout.write a[0], '\n'
stdout.write a[2], '\n'
stdout.write b[2], '\n'

for i in a:
  stdout.write i
