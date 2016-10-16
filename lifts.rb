require "./movement"

class BackSquat < Movement
  def initialize
    super
    @name = "back squat"
  end

  def rep_scheme_options
    ["5x5"]
  end
end

class Deadlift < Movement
  def initialize
    super
    @name = "deadlift"
  end

  def rep_scheme_options
    ["1x5"]
  end
end

class BenchPress < Movement
  def initialize
    super
    @name = "bench press"
  end

  def rep_scheme_options
    ["5x5"]
  end
end

class ShoulderPress < Movement
  def initialize
    super
    @name = "shoulder press"
  end

  def rep_scheme_options
    ["5x3"]
  end
end
