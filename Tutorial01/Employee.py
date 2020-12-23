class Employee:
    def __init__(self, career):
        self._career = career

    def LinuxEngineer(self):
        if self._career == 'Linux Engineer':
            return 120_000

    def PythonDeveloper(self):
        if self._career == 'Python Developer':
            return 150_000

linux_admin = Employee("Linux Engineer")
print("The salary for a Linux Engineer is: ", linux_admin.LinuxEngineer())
