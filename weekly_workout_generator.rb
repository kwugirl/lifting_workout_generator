require './texas_method_workout_generators'
require './pull_movements'
require './core_movements'

class WeeklyWorkoutPlan
  attr_reader :day_1, :day_2, :day_3

  def initialize(squat_5rm, press_type, bench_5rm, shoulder_press_5rm, deadlift_5rm)
    press_5rm = press_type == :bench ? bench_5rm : shoulder_press_5rm

    texas_method_day_1 = TexasMethodDay1.new(squat_5rm, press_type, press_5rm, deadlift_5rm)
    texas_method_day_2 = TexasMethodDay2.new(texas_method_day_1, bench_5rm, shoulder_press_5rm)
    texas_method_day_3 = TexasMethodDay3.new(texas_method_day_1)

    @day_1 = DayWorkoutPlan.new(texas_method_day_1)
    @day_2 = DayWorkoutPlan.new(texas_method_day_2)
    @day_3 = DayWorkoutPlan.new(texas_method_day_3)
  end

  def to_s
    <<-EOS
    Day 1:
    #{day_1}

    Day 2:
    #{day_2}

    Day 3:
    #{day_3}
    EOS
  end
end

class DayWorkoutPlan
  attr_reader :pull, :core, :squat, :press, :deadlift

  def initialize(texas_method_lifts)
    @squat = texas_method_lifts.squat
    @press = texas_method_lifts.press
    @deadlift = texas_method_lifts.deadlift if texas_method_lifts.respond_to?(:deadlift)
    pull_movement = PullMovement.create_new
    core_movement = CoreMovement.create_new
    @pull = Exercise.new(pull_movement.name, pull_movement.rep_scheme)
    @core = Exercise.new(core_movement.name, core_movement.rep_scheme)
  end

  def to_s
    "#{press}
    #{core}

    #{squat}
    #{pull}

    #{deadlift}".strip
  end
end
