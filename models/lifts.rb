require_relative 'movement'

class BackSquat < Movement
  def initialize(rep_scheme=nil)
    super
    @name = "back squat"
  end

  def rep_scheme_options
    ["5x5"]
  end

  def self.rounded_weight(weight)
    weight.divmod(5).first * 5
  end
end

class Deadlift < Movement
  def initialize(rep_scheme=nil)
    super
    @name = "deadlift"
  end

  def rep_scheme_options
    ["1x5"]
  end

  def self.rounded_weight(weight)
    weight.divmod(5).first * 5
  end
end

class BenchPress < Movement
  def initialize(rep_scheme=nil)
    super
    @name = "bench press"
  end

  def rep_scheme_options
    ["5x5"]
  end
end

class ShoulderPress < Movement
  def initialize(rep_scheme=nil)
    super
    @name = "shoulder press"
  end

  def rep_scheme_options
    ["5x3"]
  end
end
