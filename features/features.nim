import strutils

# Nim has style insensitivity.
# This proc will work because Nim considers identifiers 
# to be equal, because it ignores the underscore.

echo "hello".to_upper()
echo "hello".toUpper()
