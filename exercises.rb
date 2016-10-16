class Exercise
  attr_reader :movement, :rep_scheme, :weight

  def initialize(movement, rep_scheme, weight=nil)
    @movement = movement.to_s
    @rep_scheme = rep_scheme
    @weight = weight
  end

  def weight_representation
    weight ? "x#{weight}#" : ""
  end

  def to_s
    "#{rep_scheme}#{weight_representation} #{movement.capitalize}"
  end
end
