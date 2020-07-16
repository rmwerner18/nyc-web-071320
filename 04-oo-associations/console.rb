require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

reigning_c_a_d = Shelter.new("Reigning Cats and Dogs")
pet_parlor = Shelter.new("Pet Parlor")
maw_and_paw = Shelter.new("Maw and Paw")
the_shelter = Shelter.new("The Shelter")

bob = Animal.new("snake", "Bob", "hiss")
coco = Animal.new("dog", "Coco", "bark bark")
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", jenn)
sophie = Animal.new("husky", "sophie", "woof woof", jeff, nil, -5)



# jenn.adopt_animal(bob)










binding.pry