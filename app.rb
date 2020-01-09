class Building

    attr_accessor(@name,@number_of_tenants)
    attr_reader(@address)

    def initialize(name,address,number_of_floors,number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
    end

    def all_buildings
        # Return all buildings
    end

    def average_number_of_tenants
        # Get all buildings, sum of all tenants / # of buildings
    end

    def placard
        # returns name and address of building
    end

    def average_number_of_tenants_per_floor
        # Calculates and returns ^
    end
end