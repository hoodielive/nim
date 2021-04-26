proc main =
  var a: array[4, uint64]
  echo sizeof(a)
  echo a.type
  a[0] = 7
  echo cast[int](addr a)
  echo cast[int](addr a[0])

  var a2 = a
  a[0] = 3
  echo a2[0]

  var dummy: int
  var s: seq[int64]
  echo sizeof(dummy)
  echo sizeof(s)
  s.add(7)
  echo s[0]
  echo cast[int](addr dummy)
  echo cast[int](addr s)
  echo cast[int](addr s[0])

  var s2 = s
  s[0] = 3
  echo s2[0]

main()