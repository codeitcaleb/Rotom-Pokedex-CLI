require_relative "./pokedex/version.rb"
require_relative './pokedex/cli.rb'
require_relative './pokedex/scraper.rb'
require_relative './pokedex/pokemon.rb'
require_relative './pokedex/type.rb'

require 'open-uri'
require 'nokogiri'
require 'pry'
# require 'catpix'
# require 'mini_magick'

module Cli
  module Rotomdex
    class Error < StandardError; end
    # Your code goes here...
  end
end
