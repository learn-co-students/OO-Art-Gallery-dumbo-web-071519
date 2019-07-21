require_relative '../config/environment.rb'

douglas = Artist.new("Douglas Hall", 23)
helen = Artist.new("Helen Patel", 20)
amy = Artist.new("Amy Ruiz", 15)
scott = Artist.new("Scott Marshall", 7)
kim = Artist.new("Kim Meyer", 10)


rice = Gallery.new("Anne Rice Gallery", "Transylvania")
juliet = Gallery.new("R & J Gallery", "London")
gold = Gallery.new("Gold Rush Gallery", "California")
pipeline = Gallery.new("Pipeline Gallery", "New York City")

paint1 = Painting.new("Festive Colors", 4000, douglas, juliet)

paint2 = Painting.new("Emblematic", 15000, helen, rice)
paint3 = Painting.new("Forest of the Night", 20000, helen, pipeline)

paint4 = Painting.new("Discomfort", 1000, amy, rice)
paint5 = Painting.new("Kick-ass", 2000, amy, gold)

paint6 = Painting.new("Monochrome", 500, scott, pipeline)
paint7 = Painting.new("Daydream", 1000, scott, gold)
paint8 = Painting.new("Blue Sky", 1000, scott, gold)

paint9 = Painting.new("++", 3000, kim, gold)
paint10 = Painting.new("Colors", 500, kim, rice)
paint11 = Painting.new("Perfect Love", 2000, kim, juliet)


binding.pry

puts "Bob Ross rules."
