# when doesn't allow as break and continue as they do not open scopes.
# know the difference between compile time and runtime as when is compile time
# so you have to use 'const' - because var is runtime


const
  runtimeVar = 10

when runtimeVar == 10:
  echo "Success"
