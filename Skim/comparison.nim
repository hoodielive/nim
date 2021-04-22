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

  let `object` = Type(`int`: 9)
  assert `object` is Type
  assert `object`.`int` == 9