import json

# JSON enters your code via API or File.
# First step must be to change the format from
# its serialized form into nested object struct
# called a JsonNode. 

let data = """
{
  "key": 3.14,
}
"""

let jsonNode = parseJson(data)

# Check the JsonNode object (variant type) with the
# kind accessor.

doAssert jsonNode.kind == JObject
doAssert jsonNode["key"].kind == JFloat