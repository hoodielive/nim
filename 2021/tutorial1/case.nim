echo "What is your name? "

let name = readLine(stdin)

case name
of "":
    echo "You will play this game right or not play it at all."
of "name":
    echo "Very funny. Access is Denied."
of "Dave", "Frank":
    echo "You are most likely polite."
else:
    echo "Hi, ", name, "!"