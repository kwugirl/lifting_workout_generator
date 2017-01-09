require_relative 'movement'

class CoreMovement
  def self.create_new
    [SitUp, Plank, SidePlank, VitKPlank,
      HangingKneeRaises, TwistingHangingKneeRaises, RussianTwist].sample.new
  end
end

class SitUp < Movement
  def initialize
    super
    @name = "sit-ups"
  end

  def rep_scheme_options
    ["5x10", "6x8"]
  end
end

class Plank < Movement
  def initialize
    super
    @name = "plank"
  end

  def rep_scheme_options
    ["3x30s"]
  end
end

class SidePlank < Movement
  def initialize
    super
    @name = "side planks"
  end

  def description
    "per side"
  end

  def rep_scheme_options
    ["4x20s", "3x30s"]
  end
end

class VitKPlank < Movement
  def initialize
    super
    @name = "Vit K planks"
  end

  def description
    "plank on one side, then 10s rest, plank in center, then 10s rest, then plank on other side"
  end

  def rep_scheme_options
    ["3x20s", "2x25s"]
  end
end

class HangingKneeRaises < Movement
  def initialize
    super
    @name = "hanging knee raises"
  end

  def rep_scheme_options
    ["3x8"]
  end
end

class TwistingHangingKneeRaises < Movement
  def initialize
    super
    @name = "hanging knee raises up & over"
  end

  def rep_scheme_options
    ["3x8"]
  end
end

class RussianTwist < Movement
  def initialize
    super
    @name = "Russian twist"
  end

  def rep_scheme_options
    ["3x20"]
  end
end
