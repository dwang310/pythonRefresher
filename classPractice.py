

class Song(object):

    def __init__(self, lyrics):
        self.lyrics = lyrics

    def sing_me_a_song(self):
        for line in self.lyrics:
            print(line)


happy_bday = Song(["Happy birthday to you",
                   "I don't want to get sued",
                   "So I'll stop right there"])

bulls_on_parade = Song(["They rally around tha family",
                        "With pockets full of shells"])

# happy_bday.sing_me_a_song()
# bulls_on_parade.sing_me_a_song()


class Animal(object):

    def __init__(self, gender):
        self.spine = 1
        self.gender = gender


class Dog(Animal):

    def __init__(self, gender, name):
        super().__init__(gender)
        self.name = name

    def bark(self):
        self.bark = "Woof!"
        print(self.bark)

sunny = Dog("Male", "Sunny")  # Creates the sunny instance
#dogName = sunny.name
#sunny.bark()

animalStatus = sunny.spine
if animalStatus == 1:
    print("It has a spine!")
else: print("Wtf, it's not an animal!")
