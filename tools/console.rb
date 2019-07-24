require_relative '../config/environment.rb'

smack = Gallery.new("Smack Mellon", "NYC")
air = Gallery.new("A.I.R", "NYC")

andrea = Artist.new("andrea", 30)
laura = Artist.new("laura", 20)
ron = Artist.new("ron", 25)
david = Artist.new("david", 28)

andrea_untitled1 = Painting.new("untitled1", 500, andrea, smack)
andrea_untitled2 = Painting.new("untitled2", 1500, andrea, air)

laura_untitled1 = Painting.new("untitled1", 1500, laura, air)
laura_untitled2 = Painting.new("untitled2", 2000, laura, smack)

ron_untitled1 = Painting.new("untitled1", 200, ron, smack)
ron_untitled2 = Painting.new("untitled2", 500, ron, air)

david_untitled1 = Painting.new("untitled1", 1000, david, air)
david_untitled2 = Painting.new("untitled2", 2000, david, smack)
david_untitled3 = Painting.new("untitled3", 2000, david, smack)



binding.pry

puts "Bob Ross rules."
