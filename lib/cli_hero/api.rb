class Api 
    def self.get_heroes(super_person)
        ## what endpoint will I need?
        url = "https://www.superheroapi.com/api.php/853701521804821/search/#{super_person}"
        ## how do I go there and get what I need?
        response = Net::HTTP.get(URI(url))
        binding.pry
        ## how do I handle that json and turn it into data
        ## how do I make superheroes objects with that data
    end 

end 

## service file/class. It's responsible for talking to my api - grabbing info and returning it.s