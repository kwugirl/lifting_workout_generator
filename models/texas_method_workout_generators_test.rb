require 'minitest/autorun'
require './texas_method_workout_generators'

day_1 = TexasMethodDay1.new(140, :bench, 83, 195)
day_2 = TexasMethodDay2.new(day_1, 88, 70)
day_3 = TexasMethodDay3.new(day_1)

puts day_1.inspect
puts day_2.inspect
puts day_3.inspect
