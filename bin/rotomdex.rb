#require "cli/rotomdex/version"
require_relative '../lib/pokedex/cli.rb'

module Cli
  module Rotomdex
    class Error < StandardError; end
    # Your code goes here...
  end
end
require_relative '../pokedex/cli.rb'
# require_relative '../pokedex/pokemon.rb'
#  require_relative '../pokedex/scraper.rb'
# require_relative '../pokedex/type.rb'

cli = CLI.new.run