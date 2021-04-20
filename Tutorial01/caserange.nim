import strutils

let input = stdin.readLine.parseInt

case input:
  of 0 .. 10:
    echo "You have a small amount of influence."
  of 11 .. 100:
    echo "Your range is 11 through 100."
  of 101 .. 1000:
    echo "Your range is between 101 to 1000."
  else:
    echo "Number is out of range."
