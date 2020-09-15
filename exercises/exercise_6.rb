require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Steven", last_name: "Mandel", hourly_rate: 50)
@store1.employees.create(first_name: "Jerrod", last_name: "Tam", hourly_rate: 50)
@store1.employees.create(first_name: "Lisa", last_name: "Jensen", hourly_rate: 55)

@store2.employees.create(first_name: "Synthia", last_name: "Smith", hourly_rate: 45)
@store2.employees.create(first_name: "Caroline", last_name: "Berkhardt", hourly_rate: 45)
@store2.employees.create(first_name: "Devi", last_name: "Vingh", hourly_rate: 40)


