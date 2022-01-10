echo "Counting to ten: "

for i in countup(1, 10):
    echo i
echo "Done counting up to ten..."

echo "For loop countdown.."
for i in countdown(10, 1):
    echo i

echo "Countdown terminated..."

var i = 1

echo "While Looping.. "
while i <= 10:
    echo i
    inc(i)

echo "While looping terminated.."

# You can also use the nim iterator as well.

echo "With iterator."

for i in 0 ..< 10:
    echo i

echo "With iterator terminated..."

echo "Implementation iterator."
var s = "Some String."

for i in 0 ..< s.len:
    echo i

echo "Implementation iterator terminated.."

echo "Indexing..."
for idx, c in s[0 .. ^1]:
    echo idx, c
echo "Indexing terminated.. "

echo "Iterators over collections:"
for index, item in ["a", "b"].pairs:
    echo item, " at index ", index

echo "Iterator over collections terminated..."

#echo "Scopes and Block statement: "
#block myBlock:
#    var x = "hi"
#echo x
#
#echo "While scope terminated.."

echo "Break statement: "

block myblock:
    echo "Entering block.."
    while true:
        echo "looping.."
        break
    echo "still in block"
echo "outside the block.."

block myblock2:
    echo "entering block 2..."
    while true:
        echo "looping"
        break myblock2
    echo "still in block 2"
echo "outside of block 2"