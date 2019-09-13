require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    URL = 'https://pokemondb.net/pokedex/national'

    def self.scrape_pokedex
       doc = Nokogiri::HTML(open(URL))
       doc.css(".infocard-list.infocard-list-pkmn-lg").each_with_index do |generation, index|
       
         generation_number =  index + 1
       
         generation.css(".infocard").each do |pokemon|
         
         number = pokemon.css("small")[0].text.split("#")[1]
         name = pokemon.css(".ent-name").text
         type = pokemon.css("small a").map {|type| type.text}

         Pokemon.new(number, name, type, generation_number)
         end
     end
     #binding.pry
       #   return
   end
  
end 

 #      #picture = doc.css("img-sprite")
    #      #image = picture.attr('data-src')