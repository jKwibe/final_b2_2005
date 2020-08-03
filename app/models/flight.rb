class Flight < ApplicationRecord
  validates_presence_of :number , :date, :time, :dep_city, :arr_city
  belongs_to :airline
end
