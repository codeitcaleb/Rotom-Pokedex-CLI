
class CLI
  
  def run
     scrape_pokedex
     welcome
     pokedex_menu
  end

  def welcome 
    puts "Pokedex now booting up..."
    
    sleep 2
      puts "Loading Pokemon..."
    sleep 2
      scrape_pokedex
      puts "Welcome User!"  
      puts "Please state name:"
      name = gets.chomp
    sleep 2
      puts "User registration complete."
    sleep 3
      puts "Hello! Pleased to meet you, User #{name}."
    sleep 3
      puts "I am Pokedex version Rotom but you can call me Rotomdex."
    sleep 3
      puts "The Rotomdex is a self-learning Pokedex that updates its data each and everytime it meets a new Pokemon. "
    sleep 3
      puts "Want to see what I know?   y/n"
    reply = gets.chomp

    case 
    when reply == "y"
      pokedex_menu
    when reply == "n"
      puts "Bye #{name}! See you next time."
    end
  end

  def pokedex_menu 
      puts "Choose Pokemon by number:"
      puts "Choose Pokemon by name:"
      puts "Choose Pokemon by type:"
      reply = gets.chomp

      case 
        when reply == "number"
          puts "Here are all of the Pokemon by number: "
              Pokemon.gen_one
        when reply == "name"
          puts "Which Pokemon do you want to learn more about?"
           name = gets.chomp
           Pokemon.all.find_by_name(name)
        when reply == "type"
           type = gets.chomp
           Pokemon.all.find_by_type(type)
      end

  end

  def scrape_pokedex
    Scraper.scrape_pokedex
  end

end
