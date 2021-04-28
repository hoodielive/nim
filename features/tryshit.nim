# try/except

proc second() = 
  raise newException(IOError, "Somebody set us up the bomb.")

proc first() =
  try:
    second()
  except:
    echo "Cannot perform second action because: " &
      getCurrentExceptionmsg()

first()