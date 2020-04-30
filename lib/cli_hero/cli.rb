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

end 

##handles input FROM user and output TO my user