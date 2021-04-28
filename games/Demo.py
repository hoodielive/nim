
IAMACONSTANT = 12 #<int>
print(type(IAMACONSTANT))

def TrytoParse(result):
    result = int(input("Please enter a number: "))
    return result

print(TrytoParse(1))

if TrytoParse(3) == 3:
    print("It does return 3.")
else:
    print("Something went wrong.")

def load_tests(loader, standard_tests, pattern):
    this_dir = os.path.dirname(__file__)
    package_tests = loader.discover(start_dir=this_dir, pattern=pattern)
    standard_tests.addTests(package_tests)

