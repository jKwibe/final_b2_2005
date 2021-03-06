# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@frontier = Airline.create!(name: "Frontier") 
@delta = Airline.create!(name: "Delta") 

@flight_1 = @frontier.flights.create(number: "12345", date: "12/12/20", time: "10:00", dep_city: "Denver", arr_city: "Califonia")
@flight_2 = @frontier.flights.create(number: "54321", date: "12/03/20", time: "11:00", dep_city: "Seatle", arr_city: "Denver")
@flight_3 = @delta.flights.create(number: "23456", date: "14/10/20", time: "12:00", dep_city: "Denver", arr_city: "Texas")
@flight_4 = @frontier.flights.create(number: "34567", date: "01/01/21", time: "10:30", dep_city: "Seatle", arr_city: "Denver")
@flight_5 = @frontier.flights.create(number: "56789", date: "30/11/20", time: "13:00", dep_city: "Califonia", arr_city: "Boston")
@flight_6 = @delta.flights.create(number: "09876", date: "04/10/21", time: "16:00", dep_city: "Denver", arr_city: "Newyork City")

@passanger_1 = Passanger.create(name: "Kwibe", age:"27")
@passanger_2 = Passanger.create(name: "Merci", age:"22")
@passanger_3 = Passanger.create(name: "Ngena", age:"34")
@passanger_4 = Passanger.create(name: "Dan", age:"44")

@passanger_4.flights << [@flight_2, @flight_3]
@passanger_1.flights << [@flight_1, @flight_3]
@passanger_2.flights << [@flight_2, @flight_3]
@passanger_3.flights << [@flight_2, @flight_3, @flight_1]