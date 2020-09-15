require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter a store name to create a new store: "
storename = $stdin.gets.chomp

@store7 = Store.create(name: storename)

puts @store7.errors.messages

