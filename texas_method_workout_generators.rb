require './lifts'
require './exercises'

class TexasMethodDay1 # aka VolumeDay
  attr_reader :squat, :press, :deadlift

  def initialize(squat_5rm, press_type, press_5rm, deadlift_5rm)
    @squat = create_squat_exercise(squat_5rm)
    @press = create_press_exercise(press_type, press_5rm)
    @deadlift = create_deadlift_exercise(deadlift_5rm)
  end

  def create_squat_exercise(five_rep_max)
    weight = BackSquat.rounded_weight(0.9 * five_rep_max)
    Exercise.new(BackSquat.new.name, "5x5", weight)
  end

  def create_press_exercise(type, five_rep_max)
    weight = (0.9 * five_rep_max).round

    case type
    when :bench
      Exercise.new(BenchPress.new.name, "5x5", weight)
    when :shoulder
      Exercise.new(ShoulderPress.new.name, "5x5", weight)
    end
  end

  # this should increase each week, even though not going for actual 5rm
  def create_deadlift_exercise(five_rep_max)
    weight = Deadlift.rounded_weight(0.9 * five_rep_max)
    Exercise.new(Deadlift.new.name, "1x5", weight)
  end

  def inspect
    "Texas Method Day 1: #{squat.inspect}, #{press.inspect}, #{deadlift.inspect}"
  end
end

class TexasMethodDay2 # aka RecoveryDay
end

class TexasMethodDay3 # aka IntensityDay
end
