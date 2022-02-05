require "./formula.rb"

class ProximityScanner

  attr_accessor :data, :point_p, :neighbor_range, :ranging_method

  def initialize(data:, point_p:, neighbor_range:, ranging_method: Euclidean.new)
    @data = data
    @point_p = point_p
    @neighbor_range = neighbor_range
    @ranging_method = ranging_method
  end

  def scan_for_neighbors
    neighbors = []
    data.points.each do | other_point |
      if neighbor_to(other_point)
        neighbors << other_point.name
      end
    end
    return neighbors
  end

  def neighbor_to(other_point)
    range_to(other_point) <= neighbor_range
  end

  def range_to(other_point)
    @ranging_method.measure(@point_p.dimensions, other_point.dimensions)
  end

end
