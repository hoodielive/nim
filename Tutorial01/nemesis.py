def func():
    return "Howdy"

def funcParam(value1):
    return value1

def funcArgsKwargs(*args, **kwargs):
    return(args, kwargs)

print(func())
print(funcParam("This is the value1 value."))
print(funcArgsKwargs(("Bitchh", "Betta", "Have", "my", "Money"), age=44, jesus="deliverance"))

class Orisha:
    def __init__(self, name, power):
        self._name = name
        self._power = power

    def returnName(self):
        return self._name
    
    def returnPower(self):
        return self._power
    
sango = Orisha('Sango', 'Wit/Analysis')
print(sango.returnName())
print(sango.returnPower())

def mycontext():
    return "howdy!"

# dictionaries / comprehensions

s_dict = { 'location': 'Philly', 'environment': 'Love'}

# example of a dictionary comprehension
s_comp = {k:v for (k, v) in s_dict.items()}
print(s_comp)

s_comp = {v for v in s_dict.values()}
print(s_comp)

s_comp = {k for k in s_dict.keys()}
print(s_comp)

# List comprehension
l_comp = [1, 2, 3]

x = [x for x in l_comp if x == 3]
print(x)

def triggerMessage():
    return "Error occurred, but I got it!"

# tuple comprehensions
tup_comp = (1, 2, 3)
t_comp = (t for t in tup_comp)

print(type(t_comp))

print(next(t_comp)); print(next(t_comp)); print(next(t_comp))

try:
    print(next(t_comp))
except StopIteration:
    triggerMessage()
finally:
    print("Aidos!")


@mycontext()
def functionalWit():
    ...

functionalWit()