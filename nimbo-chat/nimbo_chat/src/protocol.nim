import json

type
  Message* = object
    username*: string
    message*: string

  MessageParsingError* = object of Exception

proc parseMessage*(data: string): Message =
  let dataJson = parseJson(data)
  result.username = dataJson["username"].getStr()
  result.message = dataJson["username"].getStr()

when isMainModule:
  block: 
    let data = """{ "username": "Esu", "message": "Alaffia!" }"""
    let parsed = parseMessage(data)
    doAssert parsed.username == "Esu"
    doAssert parsed.message == "Alaffia!"

  block:
    try:
      let parsed = parseMessage("data")
    except MessageParsingError:
      doAssert true
    except: 
      doAssert false

    echo "All test(s) have passed."

assert parseJson("null").kind == JNull
assert parseJson("true").kind == JBool
assert parseJson("42").kind == JInt
assert parseJson("3.14").kind == JFloat
assert parseJson("\"Hi\"").kind == JString
assert parseJson("""{  "key": "value" }""").kind == JObject
assert parseJson("[1, 2, 3, 4]").kind == JArray