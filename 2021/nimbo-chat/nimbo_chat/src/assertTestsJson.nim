
assert parseJson("null").kind == JNull
assert parseJson("true").kind == JBool
assert parseJson("42").kind == JInt
assert parseJson("3.14").kind == JFloat
assert parseJson("\"Hi\"").kind == JString
assert parseJson("""{  "key": "value" }""").kind == JObject
assert parseJson("[1, 2, 3, 4]").kind == JArray