require "./formula.rb"
require "./point.rb"
require "./spatial_data.rb"
require "./proximity_scanner.rb"

x1 = Point.new(dimensions: [0,0], name: "x1")
x2 = Point.new(dimensions: [1,0], name: "x2")
x3 = Point.new(dimensions: [1,1], name: "x3")
x4 = Point.new(dimensions: [2,2], name: "x4")
x5 = Point.new(dimensions: [3,1], name: "x5")
x6 = Point.new(dimensions: [3,0], name: "x6")
x7 = Point.new(dimensions: [0,1], name: "x7")
x8 = Point.new(dimensions: [3,2], name: "x8")
x9 = Point.new(dimensions: [6,3], name: "x9")
data = SpatialData.new(points: [x1, x2, x3, x4, x5, x6, x7, x8, x9])


data.points.each do | point |
  prox_scanner = ProximityScanner.new(data: data, point_p: point, neighbor_range: 1, ranging_method: Euclidean.new)
  neighbors = prox_scanner.scan_for_neighbors
  puts "Point #{point.name}: neighbors are: #{neighbors}"
end
