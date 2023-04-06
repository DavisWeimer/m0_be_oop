# Write a class called Unicorn

class Unicorn
    attr_reader :name, :color, :say
    def initialize(name, color = "Silver")
        @name = name
        @color = color
        # @say = "* #{say}*"
    end
    def say(string)
        puts "*#{string}*"
        
    end
end

unicorn1 = Unicorn.new("Bubbles")

unicorn1.say("Mooop!")

p unicorn1


# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string



#  Write a class called Vampire

class Vampire
    attr_reader :name, :pet
    def initialize(name, pet = "Bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def vant_2_drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Dracula")

p vampire1

vampire1.vant_2_drink

p vampire1

#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false


#  Write a Dragon class

class Dragon
    attr_reader :name, :rider, :color
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true 
        @counter = 0
    end
    def eat
        if @counter < 4
        @counter +=1
        else @counter >= 4
        @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Smaug", "None", "Red")

p dragon1
dragon1.eat
p dragon1
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1


#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


#  Write a Hobbit class

class Hobbit
    attr_reader :name, :disposition, :age
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end
    def celebrate_birthday
        @age += 1
        @is_adult = true if @age >= 33
        @is_old   = true if @age >= 101
    end
    def has_ring
        if @name.include? "Frodo"
            puts @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Sancho Sandyfoot", "Stinky", 189)
hobbit2 = Hobbit.new("Frodo", "Determined", 50)

p hobbit1
hobbit1.celebrate_birthday
p hobbit1

p hobbit2
hobbit1.celebrate_birthday
p hobbit2

p hobbit2
hobbit2.has_ring
p hobbit2

=begin  it should have a dynamic name attribute (string)
  it should have a dynamic disposition attribute (string)
  it should have an age attribute that defaults to 0
  it should have a celebrate_birthday method. When called, the age increases by 1
  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
=end

