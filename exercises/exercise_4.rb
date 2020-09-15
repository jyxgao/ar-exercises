require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name} store carries men's apparel and has an annual revenue of $#{store.annual_revenue}."
end

@womens_stores = Store.where(womens_apparel: true)
@womens_stores.each do |store|
  puts "#{store.name} store carries women's apparel and has an annual revenue of $#{store.annual_revenue}."
end

puts "----- Revenue Less Than 1 million -----"
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
@womens_stores.each do |store|
  puts "#{store.name} store carries women's apparel and has an annual revenue of $#{store.annual_revenue}."
end
