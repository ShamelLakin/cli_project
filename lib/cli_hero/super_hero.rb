class SuperHero

    attr_accessor :name, :power_stats, :biography, :id

    @@all = []

    def initialize(name, power_stats, biography, id)
        @name = name 
        @power_stats = power_stats
        @biography = biography
        @id = id
        @@all << self
    end 

    def self.all
        @@all
    end 

end 

## responsible for making superheroes