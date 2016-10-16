require 'minitest/autorun'
require './weekly_workout_generator'

squat_5rm = 140
press_type = :shoulder
bench_5rm = 83
shoulder_press_5rm = 73
deadlift_5rm = 105
plan = WeeklyWorkoutPlan.new(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)

puts plan.to_s
