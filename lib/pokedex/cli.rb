
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
    sleep 1
      scrape_pokedex
      puts "Welcome User!"  
      puts "Please state name:"
      name = gets.chomp
    #sleep 2
      puts "User registration complete."
    #sleep 3
      puts "Hello! Pleased to meet you, User #{name}."
    #sleep 3
      puts "I am Pokedex version Rotom but you can call me Rotomdex."
    #sleep 3
      puts "The Rotomdex is a self-learning Pokedex that updates its data each and everytime it meets a new Pokemon. "
    #sleep 3
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
      puts "Choose Pokemon by generation:"
      # puts "Choose Pokemon by number:"
      puts "Choose Pokemon by name:"
      puts "Choose Pokemon by type:"
      reply = gets.chomp

      case
      when reply == "generation"
        generation  
        puts "Here are all of the Pokemon by number: "
            #   Pokemon.kanto_gen_one

            #   puts " Please select a pokemon by number."
            #   reply = gets.chomp.to_i
            #  # if  reply == 

              
        when reply == "name"
          puts "Which Pokemon do you want to learn more about?"
           name = gets.chomp
           Pokemon.all.find_by_name(name)
        # when reply == "type"
        #    type = gets.chomp
        #    Pokemon.all.find_by_type(type)
      end

  end

  def generation
      puts "Choose a generation:"
      puts "1. Kanto"
      puts "2. Johto"
      puts "3. Hoenn"
      puts "4. Sinnoh"
      puts "5. Unova"
      puts "6. Kalos"
      puts "7. Alola"

     reply = gets.chomp
     
      case reply
      when reply == "Kanto" || "1"
        Pokemon.kanto_gen_one

      when reply == "Johto" || "2"
        Pokemon.johto_gen_two
        
      when reply == "Hoenn" || "3"
        Pokemon.hoenn_gen_three

      when reply == "Sinnoh" || "4"
        Pokemon.sinnoh_gen_four

      when reply == "Unova"  || "5"
        Pokemon.unova_gen_five

      when reply == "Kalos" || "6"
        Pokemon.kalos_gen_six

      when reply == "Alola" || "7"
        Pokemon.alola_gen_seven
        # Make a default cause and have it return to menu.
      end
      return_pokemon
    #  puts "Here are all of the Pokemon by number: "
  end

  def return_pokemon
    puts "Choose a number:"
    
    reply = gets.chomp
    
    binding.pry
  end

  def scrape_pokedex
    Scraper.scrape_pokedex
  end

end
