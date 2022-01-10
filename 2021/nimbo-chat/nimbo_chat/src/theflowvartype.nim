import threadpool

proc foo: string = "Dog"

var x: FlowVar[string] = spawn foo()

assert(^x == "Dog")