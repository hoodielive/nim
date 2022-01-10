import strutils
import unittest

proc sameIdentifier(a, b: string): bool =
  a[0] == b[0] and
    a.replace("_", "").toLowerAscii == b.replace("_", "").toLowerAscii

var `var` = "hello, stropping"
echo `var`

type
  Type = object
    `int`: int

proc something(x: bool): bool {.deprecated: "find some other shit to use".} =
  result = x
  return x

var result = something(true)

if result == true:
  stdout.write "fuck off"

type
  Subrange = range[0..5]

var str: string = "123456789"
for i in Subrange.low .. Subrange.high:
  echo str[i]

while p != nil and p.name != "xyz":
  # p.name is not evaluated if p == nil
  p = p.next