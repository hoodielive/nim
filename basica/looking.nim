import os
import threadpool

var cancelChan: Channel[bool]

cancelChan.open()

proc p1(): bool=
  result = true
  for i in countup(0, 50):
    echo "p1 Doing action."
    sleep(1000)
    let (hasData, msg) = cancelChan.tryRecv()
    if msg == true:
      echo "Cancelling p1"
      return
  echo "Done p1..."


proc p2(): bool =
  result = true
  for i in countup(0, 5):
    echo "p2 Doing action"
    sleep(1000)
    let (hasData, msg) = cancelChan.tryRecv()
    if msg == true:
      echo "Cancelling p1"
      return

  echo "Done p2"

proc timeoutable(p: proc, timeout = 10)=
  var t = (spawn p())
  for i in countup(0, timeout):
    if t.isReady():
      return
    sleep(1000)
  cancelChan.send(true)
  

when isMainModule:
  timeoutable(p1)
  timeoutable(p2)

