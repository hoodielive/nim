import json

type
  Box = object
    case empty: bool
    of false:
      contents: string
    else: discard

var obj = Box(empty: false, contents: "Hello")
echo obj.contents
echo Box.type

when isMainModule: 
  block:
    let data = """ 
      { "username" : "Esu", message: "Hi!" }
    """
    let parsed = parseMessage(data)

    doAssert parsed.username == "Esu"
    doAssert parsed.message == "Hi!"

    let obj2 = parseJson(data)
    echo obj2
    echo obj2.type
    assert obj2.kind == JObject
    assert obj2["username"].kind == JString
    assert obj2["username"].str == "Esu"
