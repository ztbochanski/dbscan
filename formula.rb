require "distance_measures"

class Euclidean

  def measure(point_p, point_q)
    point_p.euclidean_distance(point_q)
  end

end

class Haversine

  def measure(point_p, point_q)
    point_p.haversine_distance(point_q)
  end

end
