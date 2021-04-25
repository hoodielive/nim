import strutils

# Nim has style insensitivity.
# This proc will work because Nim considers identifiers 
# to be equal.

echo "hello".to_upper()
echo "hello".toUpper()
