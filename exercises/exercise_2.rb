require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)

@store1 = Store.find_by(name: "Burnaby")
@store2 = Store.find_by(name: "Richmond")
puts @store1.annual_revenue

@store1.name = "Metrotown"
puts @store1.name
puts @store2.name