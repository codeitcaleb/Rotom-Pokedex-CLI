require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    URL = 'https://pokemondb.net/pokedex/national'


    def self.scrape_pokedex 
       doc = Nokogiri::HTML(open(URL))
       doc.css(".infocard").each do |pokemon|
        
         url = 'https://pokemondb.net/pokedex/national'
         #picture = doc.css("img-sprite")

         #image = picture.attr('data-src')
         name = doc.css(".ent-name").text
         type = doc.css("small a").each {|type| type.text}
         
         Pokemon.new(name, type)
       end
       return
    end
   # binding.pry
end 


# 

# pokemon_name = pokemon.css(".ent-name").text



# This grabs all 809 Pokemon by infocard
#pry(main)> pokemon.css(".infocard")

# This grabs the first pokemon- The one at index [0].
# pokemon.css(".infocard")[0].text

#This grabs each Pokemon by name
#pokemon.css(".ent-name").text

#This grabs the types of ALL the Pokemon
#pokemon.css(".itype").text