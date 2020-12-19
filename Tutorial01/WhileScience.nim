echo "What is your name?: "

var name = readLine(stdin)

while name == "":
    echo "Please tell me your name: "
    name = readLine(stdin)

if name == "Abifoluwa":
    echo "Hello, Omo-Esu"
elif name == "Mofetoluwa":
    echo "Hello, Omo-Sango"
else: discard