
type
  Dog = object

proc bark(self: Dog) =
  echo "Woof!"

let dog = Dog()
dog.bark()

# As opposed to 
# class Dog: 
#     def bark(self):
#         print("Woof!")
# dog = Dog()
# dog.bark()
