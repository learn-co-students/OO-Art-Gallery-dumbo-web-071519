require_relative '../config/environment.rb'


a1 = Artist.new("da vinci", 5)
a2 = Artist.new("picasso", 3)
a3 = Artist.new('manet', 10)
a4 = Artist.new("TEST", 0)

g1 = Gallery.new("Storm King", "NYC")
g2 = Gallery.new("Louvre", "Austin")
g3 = Gallery.new("MoMA", "Boston")
g4 = Gallery.new("TEST", "TEST")

p1 = Painting.new("Mona Lisa", 100, a3, g3)
p2 = Painting.new("Venus", 5, a2, g2)
p3 = Painting.new("Art Piece Number 3", 50, a1 ,g1)
p4 = Painting.new("Art Piece Number 4", 50, a2 ,g1)
p5 = Painting.new("Art Piece Number 5", 50, a1 ,g1)
p6 = Painting.new("Art Piece Number 6", 50, a2 ,g1)
p7 = Painting.new("Art Piece Number 7", 51, a1 ,g1)
p8 = Painting.new("Art Piece Number 8", 50, a3 ,g1)
p9 = Painting.new("TEST", 1, a4 ,g4)
p10 = Painting.new("TEST", 1, a4 ,g4)



binding.pry

puts "Bob Ross rules."
