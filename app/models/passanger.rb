class Passanger < ApplicationRecord
    validates_presence_of :name, :age
    has_many :flight_passangers
    has_many :flights, through: :flight_passangers
end
