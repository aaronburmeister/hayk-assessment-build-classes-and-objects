class Building

    attr_accessor(:name, :number_of_tenants)
    attr_reader(:address, :number_of_floors)

    @@all = []

    def initialize(name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end

    def self.all
        # Return all buildings
        @@all
    end

    def self.total_tenants #helper method
        @@all.reduce(0) do |sum, building|
            sum + building.number_of_tenants
        end
    end

    def self.average_number_of_tenants
        # Get all buildings, sum of all tenants / # of buildings
        (Building.total_tenants.to_f / @@all.length).round
    end

    def placard
        # returns name and address of building
        placard = []
        placard << self.name,
        placard << self.address
    end

    def self.total_floors
        @@all.reduce(0) do |sum, building|
            sum + building.number_of_floors
        end
    end

    def average_tenants_per_floor
        # Calculates and returns ^
        @number_of_tenants.to_f / @number_of_floors
    end
end

the_hub = Building.new("The Hub", "Walnut Street", 7, 700)
the_lab = Building.new("The Lab", "Platte Street", 5, 500)
learning_center = Building.new("Where Dreams Begin Learning Center", "N Downing Street", 3, 50)
