require 'nokogiri'
require 'open-uri'
require 'pry'
 
html = open("https://pokemondb.net/pokedex/national")
pokemon = Nokogiri::HTML(html)

pokemon.css("small").text


# pokemon_name = pokemon.css(".ent-name").text

binding.pry

# This grabs all 809 Pokemon by infocard
#pry(main)> pokemon.css(".infocard")

# This grabs the first pokemon- The one at index [0].
# pokemon.css(".infocard")[0].text

#This grabs each Pokemon by name
#pokemon.css(".ent-name").text

#This grabs the types of ALL the Pokemon
#pokemon.css(".itype").text