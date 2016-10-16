class Movement
  attr_reader :name, :rep_scheme

  def initialize
    @rep_scheme = rep_scheme_options.sample
  end

  def to_s
    name.to_s
  end

  def inspect
    "Class #{self.class}, @name='#{name}', @rep_scheme=#{rep_scheme}"
  end

  def rep_scheme_options
    raise NotImplementedError
  end
end
