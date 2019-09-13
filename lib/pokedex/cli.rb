class CLI
  
  def run
     welcome
     response
    
  end

  def welcome 
    puts "Pokedex now booting up..."
    
    sleep 1
      puts "Loading Pokemon..."
    sleep 1
      scrape_pokedex
      puts "Welcome User! Please state name:"
      user_name = gets.chomp
    #sleep 2
      puts "User registration complete."
    #sleep 3
      puts "Hello! Pleased to meet you, User #{user_name}."
    #sleep 3
      puts "I am Pokedex version Rotom but you can call me Rotomdex."
    #sleep 3
      puts "The Rotomdex is a self-learning Pokedex that updates its data each and everytime it meets a new Pokemon. "
    #sleep 3
  end

  def response
      puts "Want to see what I know?   (y/n)"
      
      reply = gets.chomp
      
      case reply
      when "y"
        pokedex_menu
      when "n"
        puts "Bye Trainer #{user_name}! See you next time."
       sleep 1
        return
      end

  end

  def pokedex_menu 
      puts "To choose a Pokemon by generation, type generation:"
      # puts "To choose a Pokemon by number, type number:"
      puts "To choose a Pokemon by name, type name:"
      
      reply = gets.chomp

      case reply
      when "generation"
           generation
      when "name"
           names
      when "exit"
        puts "Good Bye User! See you next time."
       sleep 1 
        return
      else
        puts "Does not compute, does not compute!"
       sleep 1
        puts "Please try again."
       sleep 2
        pokedex_menu
      end

  end

  def generation
      puts "Choose a generation by number:"
      puts "1. Kanto"
      puts "2. Johto"
      puts "3. Hoenn"
      puts "4. Sinnoh"
      puts "5. Unova"
      puts "6. Kalos"
      puts "7. Alola"

      reply = gets.chomp

      puts "Here are the Pokemon in Generation #{reply}."

      # list_pokemon = Pokemon.find_by_generation_number(reply.to_i)

      Pokemon.find_by_generation_number(reply.to_i).each {|pokemon| puts "#{pokemon.number}. #{pokemon.name}"}
      
      number = gets.chomp
      
      # binding.pry

      # case reply
      # when Pokemon.find_by_generation_number(reply.to_i)
      #   puts "Here are all of the Pokemon in Generation  #{reply}:"
      #   puts Pokemon.all.find_by_generation_number(reply.to_i)
        
      # when "exit!"
      #   return
      # else
      #   puts "Does not compute, does not compute!"
      #  sleep 1
      #   puts "Please try again."
      #  sleep 4
      #   pokedex_menu
      # end
        
  end

  def names
      puts "Which Pokemon do you want to learn more about?"
      
      reply = gets.chomp
      Pokemon.all.find_by_name.include?(reply)

      case reply
      when Pokemon.all.find_by_name.include?(reply)
        return_pokemon(reply)
      when "exit"
          puts "Goodbye User! See you next time."
          return
      end
  end

  def return_pokemon(reply)
      pokemon = Pokemon.find_by_name(reply)
     sleep 1
      puts "Name: #{pokemon.name}"
     sleep 1 
      puts "Type: #{pokemon.type}"
  end

  def scrape_pokedex
    Scraper.scrape_pokedex
  end

end