require 'sinatra/base'
require_relative 'models/weekly_workout_generator'

class LiftingWorkoutGenerator < Sinatra::Base
  get '/' do
    squat_5rm = 155 # bump by 5 when ready to go up
    press_type = :bench
    bench_5rm = 97 # bump by 5 when ready to go up
    shoulder_press_5rm = 72 # bump by 2 when ready to go up
    deadlift_5rm = 230 # bump by 5 when ready to go up
    plan = WeeklyWorkoutPlan.new(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)

    plan.to_s
  end
end
