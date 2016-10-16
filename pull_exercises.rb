require './movement'

class PullExercise
  def self.create_new
    [PullUp, RingRow, PauseRingRow].sample.new
  end
end

class PullUp < Movement
  attr_reader :assistance_method, :grip

  def initialize
    super
    @assistance_method = assistance_method_options.sample
    @grip = grip_options.sample
    @name = "#{assistance_method} #{grip}"
  end

  def assistance_method_options
    ["low bar", "band assisted", "jumping"]
  end

  def grip_options
    ["pull-ups", "chin-ups"]
  end

  def rep_scheme_options
    ["3x5", "5x5", "5x8", "6x5"]
  end
end

class RingRow < Movement
  def initialize
    super
    @name = "ring row"
  end

  def rep_scheme_options
    ["6x4", "5x8"]
  end
end

class PauseRingRow < Movement
  def initialize
    super
    @name = "pause ring row"
  end

  def rep_scheme_options
    ["3x6", "5x5"]
  end
end
