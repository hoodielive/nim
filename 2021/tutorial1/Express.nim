const fac4 = (var x = 1; for i in 1..4: x *= i; x)
echo fac4

proc yes(question: string): bool =
    echo question, " (y/n)"
    while true:
        case readLine(stdin)
        of "y", "Y", "yes", "Yes": return true
        of "n", "N", "no", "No": return false
        else: echo "Please be clear: yes or no."

if yes("Should I delete all your important files?"):
    echo "I'm sorry Larry, I'm afraid I can't do that."
else:
    echo "I think you know what the problem is."


proc sumTillNegative(x: varargs[int]): int =
    for i in x:
        if i < 0:
            return
        result = result + i

echo sumTillNegative() # echos 0
echo sumTillNegative(3, 4, 5) # echos 12 
echo sumTillNegative(3, 4, -1, 6) # echos 7


proc myDarling(anewsong: string): string =
    if anewsong == "My Darling":
        return anewsong

echo myDarling("My Darling")

proc printSeq(s: seq, nprinted: int = -1) =
    var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
    for i in 0 ..< nprinted:
        echo s[i]

proc add*(x, y: int): int =
    return x + y

proc addOkay[T](x, y: T): T =
    return x + y
