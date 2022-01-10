echo "What is your name? "
let name = readLine(stdin)

if name == "":
    echo "You are not getting anywhere with a empty string."
elif name == "name":
    echo "Very funny, Access Denied."
else:
    echo "Hi ", name, "!"
