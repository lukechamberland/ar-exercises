require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Store < ActiveRecord::Base
end

puts "Enter store name: "

store_name = gets.chomp

new_store = Store.new(name: store_name)

unless new_store.save
  puts "Errors occurred while saving the store:"
  new_store.errors.full_messages.each do |error|
    puts error
  end
end
