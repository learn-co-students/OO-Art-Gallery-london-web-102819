require_relative '../config/environment.rb'

######### Artist Testing ############
a1 = Artist.new("Qing", 5)
a2 = Artist.new("Tom", 6)
a3 = Artist.new("Alex", 10)
a4 = Artist.new("Seteve", 30)

######### Gallery Testing ############
#(name, city)
g1 = Gallery.new("London Gallery", "London")
g2 = Gallery.new("New York Gallery", "New York")
g3 = Gallery.new("Shanghai Gallery", "Shanghai")


######### Painting Testing ############
#title, price, artist, gallery
Painting.new("Sunflower", 10000, a1, g2)
Painting.new("Fruits", 600, a1, g1)
Painting.new("Master Piece", 333, a2, g2)
Painting.new("Starts", 9000, a3, g3) 
Painting.new("Blue Sky", 40000, a4, g1)

binding.pry

puts "Bob Ross rules."
