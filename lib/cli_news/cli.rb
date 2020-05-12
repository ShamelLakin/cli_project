class Cli 
    def run
        welcome_user
        display_articles
        instruct_user 
        user_choice 
    end 

    def welcome_user 
        puts
        puts "Hi there, Welcome to my Command News App!"
        puts
        puts "Press any key to get a list of leading headlines"
        puts"///////////////////////////////////////////////////"
        gets.chomp
    end #works

    def display_articles
        puts
        puts "Check out this list of top news stories"
        puts "___________________________________________________"
        puts "B R E A K I N G N E W S !"
        puts "___________________________________________________"
        Api.get_articles.each.with_index(1) do |article, index|
            # binding.pry 
            puts "#{index}. #{article["title"]}" 
        end
    end # works

    def instruct_user 
        puts " "
        puts "Select a number to see the article; type 'list' to see the top stories again or 'exit to' leave"
        puts " "
    end # works

    def user_choice 
        init_input = gets.to_i
        choice = init_input - 1
        articles_arr = Article.all

        while true
            if init_input < 1
                puts "Please choose a number from the list"
                user_choice
            else
                if init_input.to_s == "list"
                    display_articles
                end
    
                if init_input >= 1
                    # binding.pry
                    puts "#{init_input}. #{articles_arr[init_input].content}"
                    puts 
                    reprompt
                end
            end
        end
    end 

    def reprompt
        puts "Would you like to try another headlin, y/n: "
        choice = gets.chomp.downcase
        if choice == 'y'
            instruct_user
            display_articles
            user_choice
        else
            closing
        end
    end

    def closing
      puts "Thanks for using Command Line News"
      exit()
    end

end 


