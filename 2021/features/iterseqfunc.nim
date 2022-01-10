import sequtils, sugar, strutils

let list = @["Oyeku Ogbe", "Ogbe Otura", "Ose Ofun"]
list.map(
  (x: string) -> (string, string) => (x.split[0], x.split[1])
).echo

let newList = @["Otura Oturupon", "Osa Okanran", "Ogunda Iwori", "Iwori Ose"]
for name in newList:
  echo((name.split[0], name.split[1]))
