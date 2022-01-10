import times

let timeW = cpuTime()

var w = open("WRBenchmark.txt", fmWrite)
echo "File opened for Writing.."


var i = 0
while i < 1000:
  w.writeLine("Hello, World")
  inc i

w.close()
echo "The file has closed."

echo "The time it took to complete said processes is: ", cpuTime() - timeW