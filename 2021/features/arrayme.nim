proc main =
  var
    s: seq[int64] = newSeqofCap[int64](4)
    s2: seq[int64]
    p: ptr int

  var h = cast[ptr int](addr s2)
  echo cast[int](h)
  echo h[]
  echo ""

  for i in 0 .. 8:
    s.add(i)
    echo cast[int](addr s[0])
    p = cast[ptr int](cast[int](addr s[0] - 8))
    echo p[]
    p = cast[ptr int](cast[int](addr s[0]) - 16)
    echo p[]

main()
