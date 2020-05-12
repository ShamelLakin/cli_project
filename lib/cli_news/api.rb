class Api 
    def self.get_articles
        ## what endpoint will I need?
        url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV[NEWS_API_KEY]}"
        ## how do I go there and get what I need?
        response = Net::HTTP.get(URI(url))
        ## how do I handle that json and turn it into data
        content_arr = JSON.parse(response)["articles"]
       
        ## how do I make article objects with that data
        content_arr.each do |story_details|
            # binding.pry
            Article.new(story_details["source"]["name"], story_details["author"], story_details["title"], story_details["content"], story_details["publishedAt"])
        end
       
    end 

end 

## service file/class. It's responsible for talking to my api - grabbing info and returning it.