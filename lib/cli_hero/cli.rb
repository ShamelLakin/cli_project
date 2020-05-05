class Cli 
    def run
        puts " "
        puts "Hi there, Welcome to my superhero app!"
        puts " "
        puts "Enter the name of a superhero to see their superpowers"
        puts " "
        @super_person = gets.strip.downcase
        Api.get_heroes(@super_person)
    end 

    def display_heroes(heroes)
        puts " "
        puts "Check out this list of Superhero's"
        heroes.each.with_index(1){ |hero, index|
            puts "#{index}. #{hero.name}"}
    end 
        puts " "
end 

##handles input FROM user and output TO my user