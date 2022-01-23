import htmlgen
import jester

routes:
  get "/":
    resp h1("Hello")


  get "/hello/@name?":
    if @"name" == "":
      resp "No man received :("
    else:
      resp "Hello " & @"name"


