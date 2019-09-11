class Pokemon
    attr_accessor :dex_number, :name, :type, :secondary_type 

    def initialize(name, type, secondary_type = nil )
        @name = name
        @type = type
        
    end
end