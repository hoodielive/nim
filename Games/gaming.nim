import random, terminal, strutils, os

# Doesn't change.
const TOTAL = 12

proc tryParseInt(s: string): int =
  try:
    result = parseInt(s)
  except ValueError:
    discard

proc succeed() =
  styledEcho(styleBright, fgRed, repeat('#', 50))
  styledEcho(styleDim, fgBlue, "Congratulations!")
  styledEcho(styleBright, fgRed, repeat('#', 50))

proc fail() =
  styledEcho(styleBright, fgGreen, repeat('#', 50))
  styledEcho(styleDim, fgBlue, "Don't lose heart. Come again next time:-")

proc nimgame(total: int = TOTAL) =
  var
    total = total
    number: int
  randomize()
  while total > 1:
    styledEcho(styleDim, fgBlue, $total & " left" & "\n")
    styledEcho(styleBright, fgRed, "It's your turn")
    styledEcho(styleItalic, fgYellow, "fetch your stones(1 ~ 3): ")
    number = tryParseInt(readLine(stdin))
    while number notin {1, 2, 3}:
      styledEcho(styleItalic, fgYellow, "fetch your stones(1 ~ 3): ")
      number = tryParseInt(readLine(stdin))
    styledEcho(styleDim, fgBlue, "\nYou fetches: " & $number)
    dec(total, number)
    if total == 1:
      succeed()
      return
    if total > 1:
      let choice = rand(1 .. min(3, total))
      styledEcho(styleDim, fgBlue, "Computer fetches: " & $choice)
      dec(total, choice)
      if total == 0:
        succeed()
        return
  styledEcho(styleDim, fgBlue, $total & " left" & "\n")
  fail()

when isMainModule:
  if paramCount() < 1:
    echo "Please input the total numbers of stones!"
  if paramCount() == 1:
    var total = tryParseInt(paramStr(1))
    if total == 0:
      total = 21
    nimgame(total)
