require 'sinatra/base'
require_relative 'models/weekly_workout_generator'

class LiftingWorkoutGenerator < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/workout' do
    squat_5rm = params[:squat_5rm].to_i
    press_type = params[:press_type].to_sym
    bench_5rm = params[:bench_5rm].to_i
    shoulder_press_5rm = params[:shoulder_press_5rm].to_i
    deadlift_5rm = params[:deadlift_5rm].to_i
    plan = WeeklyWorkoutPlan.new(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)

    erb :workout, locals: {plan: plan}
  end
end
