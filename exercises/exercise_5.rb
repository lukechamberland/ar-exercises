require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

class Store < ActiveRecord::Base
end

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is $#{total_revenue}  "

average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue is $#{average_revenue}. "

high_revenue_stores_count = Store.where('annual_revenue >= 1000000').count
puts "Number of Stores with $1M+ Annual Sales is #{high_revenue_stores_count}. "