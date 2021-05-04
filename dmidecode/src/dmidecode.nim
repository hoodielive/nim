# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import dmidecodepkg/submodule
import sequtils, tables, strutils

type
  Property* = ref object
    val*: string
    items*: seq[string]

type
  Section* = ref object
    handleLine*, title*: string
    props*: Table[string, Property]

method addItem(this: Property, item: string) =
  this.items.add(item)

proc getIdentLevel(line: string) : int =
  for i, c in pairs(line):
    if not c.isSpaceAscii():
      return i
  return 0

  getindentlevel = lambda l: len(list(takewhile(lambda c: c.isspace(), l)))

proc parseDMI* (source: string) : Table[string, Section] =
  var
    state: ParserState = noOp
    lines = strutils.splitLines(source)
    sects = initTable[string, Section]()

    p: Property = nil
    s: Section = nil
    k, v: string

when isMainModule:
  echo          (getWelcomeMessage())
