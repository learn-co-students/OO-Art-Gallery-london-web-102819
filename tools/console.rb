require_relative '../config/environment.rb'


art1 = Artist.new("Maria", 12)
art2 = Artist.new("Leo", 2)
art3 = Artist.new("Fangfei", 0)


gal1 = Gallery.new("saatchi", "London")
gal2 = Gallery.new("mnac", "Barcelona")
gal3 = Gallery.new("Louvre", "Paris")

Painting.new("Mona lisa", rand * 10000000000, gal1, art1)
Painting.new("Mona lisa", rand * 10000000000, gal3, art2)
Painting.new("Mona lisa", rand * 10000000000, gal2, art3)
Painting.new("Mona lisa", rand * 10000000000, gal1, art1)
Painting.new("Mona lisa", rand * 10000000000, gal3, art3)
Painting.new("Mona lisa", rand * 10000000000, gal2, art3)
Painting.new("Mona lisa", rand * 10000000000, gal2, art2)
Painting.new("Mona lisa", rand * 10000000000, gal1, art1)


binding.pry

puts "Bob Ross rules."
