import htmlgen
import jester

routes:
  get "/":
    resp h1("I am Enilo")

  get "/hello/@name?":
    if @"name" == "":
      resp "No name received :("
    else:
      resp "Hello " & @"name"

  get "/@name":
    cond @"name" != "larry"
    resp "Correct, my name is Larry."
  
  get "/@name":
    resp "No, that's not my name."