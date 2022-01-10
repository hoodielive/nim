template declareInteger(x: untyped) =
  var x: int

declareInteger(x) # valid
x = 3
stdout.write x

template `!=` (a, b: untyped): untyped =
  # this definition exists in the System Module
  not (a == b)

assert(5 != 6)


template withFile(f, fn, mode, actions: untyped): untyped =
  var f: File
  if open(f, fn, mode):
    try:
      actions
    finally:
      close(f)
  else:
    quit("Cannot open: " & fn)

withFile(txt, "ttempl3.txt", fmWrite):
  txt.writeLine("Line 1")
  txt.writeLine("Line 2")
