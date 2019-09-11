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
    
    def self.find_by_name(name)
        self.all.select {|pokemon| pokemon.name}
    end


end
