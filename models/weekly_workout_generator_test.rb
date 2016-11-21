require 'minitest/autorun'
require './weekly_workout_generator'

squat_5rm = 150
press_type = :bench
bench_5rm = 97
shoulder_press_5rm = 74
deadlift_5rm = 225
plan = WeeklyWorkoutPlan.new(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)

puts plan.to_s
