require_relative '../config/environment.rb'

######### Artist Testing ############
a1 = Artist.new("Qing", 30)
a2 = Artist.new("Tom", 1)
a3 = Artist.new("Alex", 10)
a4 = Artist.new("Seteve", 50)

######### Gallery Testing ############
#(name, city)
g1 = Gallery.new("London Gallery", "London")
g2 = Gallery.new("New York Gallery", "New York")
g3 = Gallery.new("Shanghai Gallery", "Shanghai")


######### Painting Testing ############
#title, price, artist, gallery
Painting.new("Sunflower", 10000, a1, g1)
Painting.new("Fruits", 600, a1, g1)
Painting.new("Master Piece", 333, a2, g3)
Painting.new("Starts", 9000, a3, g3) 
Painting.new("Blue Sky1", 10000, a4, g2)
Painting.new("Blue Sky2", 190000, a3, g2)
Painting.new("Blue Sky3", 3000, a4, g3)
Painting.new("Blue Sky4", 7000, a2, g1)

binding.pry

puts "Bob Ross rules."
