require 'nokogiri'
require 'open-uri'
require 'pry'
 
html = open("https://pokemondb.net/pokedex/national")
pokemon = Nokogiri::HTML(html)
binding.pry
pokemon.css("")

# This grabs all 809 Pokemon 
#pry(main)> pokemon.css(".infocard")

# This grabs the first pokemon- The one at index [0].
# pokemon.css(".infocard")[0].text