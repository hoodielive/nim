proc createWindow(x, y, width, height: int; title: string; show: bool): Window =
  ...

var w = createWindow(show=true, title="My Application",
                     x=0, y=0, height=600, width=800, true)

echo w

