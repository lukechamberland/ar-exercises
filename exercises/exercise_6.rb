require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
end

@store1.employees.create(first_name: "Francis", last_name: "Donald", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Appleseed", hourly_rate: 50)
@store1.employees.create(first_name: "Lucy", last_name: "Smith", hourly_rate: 55)
@store2.employees.create(first_name: "Alice", last_name: "Jane", hourly_rate: 65)
@store2.employees.create(first_name: "Chris", last_name: "Jackson", hourly_rate: 70)
