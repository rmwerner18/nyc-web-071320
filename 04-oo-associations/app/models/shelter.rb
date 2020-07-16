class Shelter
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def find_all_in_shelter
        Animal.all.select {|animal| animal.shelter == self}
    end

    def find_all_adopted
        Animal.all.select {|animal| animal.owner == true}
    end

    def self.find_by_shelter(shelter)
        shelter.find_all_in_shelter
    end

    def self.list_animal_names_in_shelter(shelter)
        shelter.find_all_in_shelter.map {|animal| animal.name}
    end

    def rescue_animal(animal) 
            if (animal.owner == nil && animal.shelter == nil) || (animal.happiness < 0)
                animal.owner = nil
                animal.shelter = self
                if animal.happiness
                    animal.happiness = animal.happiness + 10
                else
                    animal.happiness = 5
                end
                "#{animal.name} is now safe!"
            else
                "#{animal.name} has already been rescued"
            end
    end

    def self.rescue_all_animals
        animals = Animal.all.select do |animal| 
            animal.owner == nil && animal.shelter == nil
        end  
        animals.each do |animal| 
            animal.shelter = @@all[rand(0...@@all.length)]
        end
        puts "All animals are now safe"
    end      
end


