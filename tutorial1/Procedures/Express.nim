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
