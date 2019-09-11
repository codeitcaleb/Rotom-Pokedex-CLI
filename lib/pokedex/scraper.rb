require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    URL = 'https://pokemondb.net/pokedex/national'


    def self.scrape_pokedex 
       doc = Nokogiri::HTML(open(URL))
       doc.css(".infocard").each do |pokemon|

         url = 'https://pokemondb.net/pokedex/national'

         name = pokemon.css(".ent-name").text
       end
       Pokemon.new(name)
    end
end 


# binding.pry

# pokemon_name = pokemon.css(".ent-name").text



# This grabs all 809 Pokemon by infocard
#pry(main)> pokemon.css(".infocard")

# This grabs the first pokemon- The one at index [0].
# pokemon.css(".infocard")[0].text

#This grabs each Pokemon by name
#pokemon.css(".ent-name").text

#This grabs the types of ALL the Pokemon
#pokemon.css(".itype").text