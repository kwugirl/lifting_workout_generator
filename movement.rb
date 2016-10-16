class Movement
  attr_reader :name, :rep_scheme, :description

  def initialize
    @rep_scheme = rep_scheme_options.sample
    @description = description
  end

  def to_s
    name.to_s
  end

  def inspect
    "Class #{self.class} @name='#{name}': @rep_scheme='#{rep_scheme}', @description='#{description}'"
  end

  def rep_scheme_options
    raise NotImplementedError
  end
end
