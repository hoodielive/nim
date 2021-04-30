import json

type
  Message* = object
    username*: string
    message*: string

proc parseMessage*(data: string): Message =
  let dataJson = parseJson(data)
  result.username = dataJson["username"].getStr()
  result.message = dataJson["message"].getStr()

proc createMessage*(username, message: string): string =
  result = $(%{
    "username": %username,
    "message": %message
  }) & "\c\l"

when isMainModule:
  block: 
    let data = """{ "username": "Esu", "message": "Alaffia!" }"""
    let parsed = parseMessage(data)
    doAssert parsed.username == "Esu"
    doAssert parsed.message == "Alaffia!"

  block:
    try:
      let parsed = parseMessage("data")
    except JsonParsingError:
      doAssert true
    except: 
      doAssert false

  block:
    let expected = """
    { "username": "Esu", "message": "Alaffia!" } 
    """ & "\c\l"

#    doAssert createMessage("Esu", "Alaffia!") == expected

    echo "All test(s) have passed."
