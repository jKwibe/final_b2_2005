class Passanger < ApplicationRecord
    validates_presence_of :name, :age
    has_many :flight_passangers
    has_many :flights, through: :flight_passangers

    def self.number_of_minors
       self.where("passangers.age < ?", '18').count
    end

    def self.number_of_adults
       self.where("passangers.age >= ?", '18').count
    end
end
