class Pokemon
    attr_accessor :generation_number, :number, :name, :type

    @@all = []

    def initialize(generation_number, number, name, type)
        @generation_number = generation_number
        @number = number
        @name = name
        @type = type
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_generation_number(generation_number)
        self.all.select{|pokemon| pokemon.generation_number == generation_number}
    end
    
    def self.all_pokemon
        self.all.each {|pokemon| puts "#{pokemon.number}. #{pokemon.name}"}
    end
    
    def self.find_by_input(input)
        # self.all.select {|pokemon| pokemon.name}
        self.all.find do |pokemon|
             input == pokemon.number
        end
    end

end