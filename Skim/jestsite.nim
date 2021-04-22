import jester
import strutils

const REGISTER_FORM = """<html>
  <head>
    <title>Book Club</title>
  </head>
  <body>
    <h3>Register</h3>
    Enter your email to sign up.
    <form action="" method="POST">
      <input type="text" name="email" />
      <button type="submit">Submit Email</button>
    </form>
  </body>
  <html>
"""

routes:
  get "/":
    resp "Hello, Worldy sinners!"
  get "/register-form":
    resp REGISTER_FORM
  post "/register-form":
    if request.params["email"] == "":
      redirect "/register-form"
    else:
      redirect "/hello/$1".format(request.params["email"])
  post "/hello/@email":
    resp "hello $1".format(@"email")
  post "/":
    resp "Well dont just stand there, say something!"

