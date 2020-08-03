require 'rails_helper'

RSpec.describe Passanger, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
  end

  describe "relationships" do
    it { should have_many(:flight_passangers) } 
    it { should have_many(:flights).through(:flight_passangers) } 
  end

  describe "methods" do
    before :each do
      @frontier = Airline.create!(name: "Frontier") 
      @delta = Airline.create!(name: "Delta") 

      @flight_1 = @frontier.flights.create(number: "12345", date: "12/12/20", time: "10:00", dep_city: "Denver", arr_city: "Califonia")
      @flight_2 = @frontier.flights.create(number: "54321", date: "12/03/20", time: "11:00", dep_city: "Seatle", arr_city: "Denver")
      @flight_3 = @delta.flights.create(number: "23456", date: "14/10/20", time: "12:00", dep_city: "Denver", arr_city: "Texas")
      @flight_4 = @frontier.flights.create(number: "34567", date: "01/01/21", time: "10:30", dep_city: "Seatle", arr_city: "Denver")
      @flight_5 = @frontier.flights.create(number: "56789", date: "30/11/20", time: "13:00", dep_city: "Califonia", arr_city: "Boston")
      @flight_6 = @delta.flights.create(number: "09876", date: "04/10/21", time: "16:00", dep_city: "Denver", arr_city: "Newyork City")

      @passanger_1 = Passanger.create(name: "Kwibe", age:"12")
      @passanger_2 = Passanger.create(name: "Merci", age:"17")
      @passanger_3 = Passanger.create(name: "Ngena", age:"13")
      @passanger_4 = Passanger.create(name: "Dan", age:"44")

      @passanger_4.flights << [@flight_2, @flight_3]
      @passanger_1.flights << [@flight_1, @flight_3]
      @passanger_2.flights << [@flight_2, @flight_3]
      @passanger_3.flights << [@flight_2, @flight_3, @flight_1]
   end

   it ".number_of_minors" do
     expect(@flight_3.passangers.number_of_minors).to  eq(3)
   end
   it ".number_of_adults" do
     expect(@flight_3.passangers.number_of_adults).to  eq(1)
   end
    
  end
  
  
end
