var f: File

if f.open("Test.txt") == true:
  stdout.write "File Opened."

let data = f.readLine()

echo '\n', data

f.close
f = open("Test.txt", fmWrite)

f.write "12345"

f = open("Test2.txt", fmWrite)
f.write "54321"
f.close

f = open("Test2.txt", fmRead)
var line = f.readLine
echo line
var allLines = f.readAll
echo allLines

f.close
