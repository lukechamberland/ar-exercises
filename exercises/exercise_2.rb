require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

class Store < ActiveRecord::Base
end

@store1 = Store.find(1)

@store2 = Store.find(2)

@store1.name = 'My new Store Name'
@store1.save

puts "First store updated. New name: #{@store1.name}"
