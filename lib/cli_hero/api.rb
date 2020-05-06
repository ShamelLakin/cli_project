class Api 
    def self.get_heroes(super_person)
        ## what endpoint will I need?
        url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=692c440b97e44049af1629e9efe064f4"
        ## how do I go there and get what I need?
        response = Net::HTTP.get(URI(url))
        binding.pry
        ## how do I handle that json and turn it into data
        hero_results = JSON.parse(response)["articles"]
        ## how do I make superheroes objects with that data
        hero_results.each do |hero_objs|
            SuperHero.new(hero_objs["name"], hero_objs["powerstats"], hero_objs["biography"], hero_objs["id"])
        end

    end 

end 

## service file/class. It's responsible for talking to my api - grabbing info and returning it.