import dmidecode
import tables
let sample1 = """
# demidecode 3.1
SMBIOS 2.6 present,
"""


var obj : Table[string, dmidecode.Section] = parseDMI(sample)

for secname, sec in obj:
  echo secname & " with " & $len(sec.props)
  for k, p in sec.props:
    echo "k : " & k & " => " & p.val
    if len(p.items) > 0:
      for i in p.items:
        echo "\t\t I: ", i
