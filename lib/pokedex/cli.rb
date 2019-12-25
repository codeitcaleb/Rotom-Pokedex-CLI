class CLI

  def run
     welcome
     response
  end

  def welcome 
     puts "Pokedex now booting up...".colorize(:cyan)
    sleep 1
      puts "Loading Pokemon...".colorize(:cyan)
    sleep 1
      scrape_pokedex
      puts "Welcome User! Please state name:".colorize(:cyan)
      user_name = gets.chomp
    sleep 2
      puts "User registration complete.".colorize(:cyan)
    sleep 2
      puts "Hello! Pleased to meet you, User #{user_name}.".colorize(:cyan)
    sleep 2
      puts "I am Pokedex version Rotom but you can call me Rotomdex.".colorize(:cyan)
    sleep 2
      puts "The Rotomdex is a self-learning Pokedex that updates its data each and everytime it meets a new Pokemon. ".colorize(:cyan)
    sleep 2
  end

  def response
      puts "Want to see what I know?   (y/n)".colorize(:blue)
      
      reply = gets.chomp
      
      case reply
      when "y"
        pokedex_menu
      when "n"
        puts "Bye! See you next time."
       sleep 2
        return
      end

  end

  def pokedex_menu 
      puts "The world of Pokemon is vast!".colorize(:cyan) 
     sleep 1
      puts "To make things easier to manage, I've sorted them by generation. ".colorize(:cyan)
     sleep 1
      puts "To choose a Pokemon by generation, type generation:".colorize(:blue)
      
      reply = gets.chomp

      case reply
      when "generation"
           list_generations
      when "exit"
        puts "Good Bye User! See you next time."
       sleep 1 
        return
      else
        puts "Does not compute, does not compute!".colorize(:red)
       sleep 1
        puts "Please try again.".colorize(:red)
       sleep 2
        pokedex_menu
      end

  end

  def list_generations
      puts "Choose a generation by number:".colorize(:blue)
      puts "1. Kanto"
      puts "2. Johto"
      puts "3. Hoenn"
      puts "4. Sinnoh"
      puts "5. Unova"
      puts "6. Kalos"
      puts "7. Alola"
      choose_generation
  end

  def choose_generation
      reply = gets.chomp 

      if reply.to_i <= 8 && reply.to_i > 0
        puts "Here are the Pokemon in Generation #{reply}.".colorize(:cyan)
        Pokemon.find_by_generation_number(reply.to_i).each {|pokemon| puts "#{pokemon.number}. #{pokemon.name}"}
        choose_pokemon
      else
        puts "Does not compute, does not compute!".colorize(:red)
        sleep 1
        puts "Please try again.".colorize(:red)
        sleep 2
        list_generations
      end
  end

  def choose_pokemon

      puts "Please choose a Pokemon by Dex number:".colorize(:blue)
      puts "Note: Please type all 3 digits.".colorize(:cyan)
      
      input = gets.chomp
      
      if input.to_i < 890 && input.to_i > 0
        return_pokemon(input)
        continue_or_exit
      else
        puts "Does not compute, does not compute!".colorize(:red)
       sleep 1
        puts "Please try again.".colorize(:red)
       sleep 2
        choose_pokemon
      end
  end

  def continue_or_exit
      puts "Would you like to continue?    (y/n)"

      reply = gets.chomp

      case reply
      when "y"
        pokedex_menu
      when "n"
        puts "Thanks for using the Rotomdex. Good Bye![^] _ [^]".colorize(:cyan)
        return
      else
        puts "Does not compute, does not compute!".colorize(:red)
       sleep 1
        puts "Please try again!".colorize(:red)
        continue_or_exit
      end

  end

  def return_pokemon(input)
      @pokemon = Pokemon.find_by_input(input)
      puts " [^] _ [^] ".colorize(:green)
     sleep 1
      puts "#{@pokemon.name}".colorize(:magenta)
     sleep 1
      puts "#{@pokemon.type}".colorize(:magenta)
  end

  def scrape_pokedex
    Scraper.scrape_pokedex
  end

end
