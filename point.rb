class Point

  attr_accessor :dimensions, :name

  def initialize(dimensions: [nil], name:)
    @dimensions = dimensions
    @name = name
  end

  def to_s
    "#{name}"
  end

end
