require_relative '../config/environment.rb'

art1 = Artist.new("Peter", 10)
art2 = Artist.new("James", 12)
art3 = Artist.new("Qing", 3)

g1 = Gallery.new("Saatchi", "London")
g2 = Gallery.new("Mnac", "Barcelona")
g3 = Gallery.new("Louvre", "Paris")

Painting.new("Mona Lisa", 10_000_000, g1, art1)
Painting.new("Ife Head", 20_000_000, g1, art1)
Painting.new("Ife Nose", 50_000_000, g1, art1)
Painting.new("MA Mona Lisa", 10_000_000, g2, art2)
Painting.new("Age Ife Head", 11_000_000, g3, art2)
Painting.new("BAse Ife Nose", 5_000_000, g1, art2)
Painting.new("Mona Lisa K", 100_000_000, g3, art1)
Painting.new("Ife Head D", 20_000_000, g3, art3)
Painting.new("Ife Nose H", 50_000_000, g3, art3)




binding.pry

puts "Bob Ross rules."
