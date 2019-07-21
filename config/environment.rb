require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

g1 = Gallery.new("The Gallery", "New York City")
g2 = Gallery.new("Atlanta Gallery", "Atlanta")

a1 = Artist.new("Emma", 11)
a2 = Artist.new("Jabari", 6)

p1 = Painting.new("Return", 12000, a2, g1)
p2 = Painting.new("Prisma", 8000, a1, g1)
p3 = Painting.new("Colora", 23000, a1, g2)
p3 = Painting.new("Azucar", 13000, a1, g1)

binding.pry

puts "uh huh"