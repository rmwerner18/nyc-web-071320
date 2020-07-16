class Animal
    attr_accessor :type, :name, :speak, :owner, :shelter
    attr_reader :happiness
    @@all = []

    def initialize(type, name, speak, owner=nil, shelter=nil, happiness=5)
        @type = type
        @name = name
        @speak = speak
        @owner = owner
        @shelter = shelter
        @happiness = happiness
        Animal.all << self
    end

    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif happiness < -10
            @happiness = -10
        else @happiness = happiness
        end
    end

    ## a class method to find all animals who dont have a home yet :(

    def self.all 
        @@all
    end

    def say_hello
        puts "#{self.name} says #{self.speak}!"
    end

end