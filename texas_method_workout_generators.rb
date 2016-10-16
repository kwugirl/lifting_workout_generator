require './lifts'
require './exercises'

class TexasMethodDay1 # aka VolumeDay
  attr_reader :squat, :press, :deadlift, :squat_5rm, :press_5rm

  def initialize(squat_5rm, press_type, press_5rm, deadlift_5rm)
    @squat_5rm = squat_5rm
    @press_5rm = press_5rm

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
  attr_reader :squat, :press

  def initialize(day_1_plan, bench_5rm, shoulder_press_5rm)
    @squat = create_squat(day_1_plan.squat)
    @press = create_press(day_1_plan.press, bench_5rm, shoulder_press_5rm)
  end

  def create_squat(day_1_squat)
    weight = BackSquat.rounded_weight(0.8 * day_1_squat.weight)
    Exercise.new(BackSquat.new.name, "2x5", weight)
  end

  def create_press(day_1_press, bench_5rm, shoulder_press_5rm)
    case day_1_press.movement
    when "bench press"
      weight = (0.9 * shoulder_press_5rm).round
      Exercise.new(ShoulderPress.new, "3x5", weight)
    when "shoulder press"
      weight = (0.9 * bench_5rm).round
      Exercise.new(BenchPress.new, "3x5", weight)
    end
  end

  def inspect
    "Texas Method Day 2: #{squat.inspect}, #{press.inspect}"
  end
end

class TexasMethodDay3 # aka IntensityDay. Light warmup (doubles/singles)
  attr_reader :squat, :press

  def initialize(day_1_plan)
    @squat = create_squat(day_1_plan.squat_5rm)
    @press = create_press(day_1_plan.press, day_1_plan.press_5rm)
  end

  def create_squat(previous_squat_5rm)
    weight = BackSquat.rounded_weight(previous_squat_5rm + 5)
    Exercise.new(BackSquat.new.name, "1x5", weight)
  end

  def create_press(day_1_press, previous_press_5rm)
    case day_1_press.movement
    when "bench press"
      weight = previous_press_5rm + 5
      Exercise.new(BenchPress.new, "1x5", weight)
    when "shoulder press"
      weight = previous_press_5rm + 2
      Exercise.new(ShoulderPress.new, "1x5", weight)
    end
  end

  def inspect
    "Texas Method Day 3: #{squat.inspect}, #{press.inspect}"
  end
end
