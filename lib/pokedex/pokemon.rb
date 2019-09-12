class Pokemon
    attr_accessor :name, :type

    @@all = []

    def initialize(name, type)
        @name = name
        @type = type
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.kanto_gen_one
        self.all[0..150].each {|pokemon| puts "#{index + 1}. #{pokemon.name}"}
    end

    def self.johto_gen_two
        self.all[151..250].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

    def self.hoenn_gen_three
        self.all[251..385].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

     def self.sinnoh_gen_four
        self.all[386..492].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

     def self.unova_gen_five
        self.all[493..648].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

     def self.kalos_gen_six
        self.all[649..720].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

     def self.alola_gen_seven
        self.all[721..808].each_with_index {|pokemon, index| puts "#{index + 1}. #{pokemon.name}"}
    end

    def self.find_by_name(name)
        self.all.select {|pokemon| pokemon.name}
    end

    def self.find_by_type(type)
        self.all.select {|pokemon| pokemon.type}
    end
end
