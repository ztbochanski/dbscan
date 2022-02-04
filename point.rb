class Point

  attr_accessor :dimensions

  def initialize(dimensions: [nil])
    @dimensions = dimensions
  end

  def to_s
    "#{dimensions}"
  end

end
