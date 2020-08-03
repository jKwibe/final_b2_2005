class Flight < ApplicationRecord
  validates :number, presence: :true, uniqueness: :true 
  validates_presence_of  :date, :time, :dep_city, :arr_city
  belongs_to :airline
  has_many :flight_passangers
  has_many :passangers, through: :flight_passangers
end
