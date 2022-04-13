let name = readLine(stdin)

case name:
  of "":
    echo "Poor soul, you lost your name or something?"
  of "Osa":
    echo "You are the Odu that corrects."
  of "Ogbe", "Oyeku":
    if name == "Ogbe":
      echo "Light!"
    if name == "Oyeku":
      echo "Darkness!"
  else:
    echo "Howdy,", name, "!"
