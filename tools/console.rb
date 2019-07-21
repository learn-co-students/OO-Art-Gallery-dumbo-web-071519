require_relative '../config/environment.rb'


a1 = Artist.new("foo", 8)
a2 = Artist.new("bar", 2)
a3 = Artist.new("baz", 1)

g1 = Gallery.new("alpha", "Vegas")
g2 = Gallery.new("beta", "Ohio")
g3 = Gallery.new("gamma", "Chicago")
g4 = Gallery.new("psi", "Brklyn")
g5 = Gallery.new("omega", "Nyc")

p1 = Painting.new("butt", 4000, a1, g1)
p2 = Painting.new("fart", 20000, a2, g1)
p3 = Painting.new("gross", 70000, a3, g1)
p4 = Painting.new("blah", 8000, a1, g2)
p5 = Painting.new("deomd", 4000, a2, g2)
p6 = Painting.new("dalsji", 45000, a2, g3)
p7 = Painting.new("siwudh", 36000, a3, g4)
binding.pry

puts "Bob Ross rules."
