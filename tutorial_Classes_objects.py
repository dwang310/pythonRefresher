import myStuff  # For module example

# Modules are like dictionaries
myFruit = {'apple': "I AM APPLES!"}
print(myFruit['apple'])

# Module example
myStuff.apple()
print(myStuff.tangerine)


# Classes are like modules
class MyStuff(object):

    def __init__(self):
        self.tangerine = "And now a thousand years between"

    def apple(self):
        print("I AM CLASSY APPLES!")


itemStuff = MyStuff()  # The 'instantiate' operation
itemStuff.apple()
print("Classy tangerine:", itemStuff.tangerine)

a = itemStuff.tangerine
print("a", a)

