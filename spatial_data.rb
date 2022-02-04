class SpatialData

  attr_accessor :points

  def initialize(points: [nil])
    @points = points
  end

  def to_s
    "#{points}"
  end

end
