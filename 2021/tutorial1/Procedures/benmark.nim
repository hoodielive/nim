
var
    arr: array[10, byte]

echo cast[uint64] (addr arr)
echo cast[uint64] (addr arr[0])
echo cast[uint64] (addr arr[1])
echo cast[uint64] (addr arr[2])
