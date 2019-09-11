
class CLI
  
  def run
    welcome
    scrape_pokedex
    pokedex_menu
  end

  def welcome 
    puts "Pokedex now booting up..."
    
    sleep 2
      puts "Loading Pokemon..."
    sleep 2
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
      puts " Want to see what I know?   y/n"
    reply = gets.chomp

    case 
    when reply == y
      pokedex_menu
    when reply == n 
      puts "Bye #{name}!"
    end
  end
      

  def pokedex_menu 
      Choose Pokemon by name
      Choose Pokemon by type
  end

  def scrape_pokedex
    Scraper.scrape_pokedex
  end

end
