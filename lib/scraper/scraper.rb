require 'nokogiri'
require 'open-uri'
 
html = open("")
pokemon = Nokogiri::HTML(html)
 
pokemon.css("")