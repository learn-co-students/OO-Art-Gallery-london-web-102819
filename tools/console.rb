require_relative "../config/environment.rb"
require "pry"
require_relative "../app/models/artist.rb"
require_relative "../app/models/gallery.rb"
require_relative "../app/models/painting.rb"

# puts "Bob Ross rules."

artist1 = Artist.new("Beca", 10)
artist2 = Artist.new("Mone", 11)

gal1 = Gallery.new("Tate", "London")
gal2 = Gallery.new("MNAC", "Barcelona")

p1 = Painting.new("lili", 20, artist2, gal1)
p2 = Painting.new("Pepito", 25, artist1, gal2)
p3 = Painting.new("SunF", 30, artist1, gal2)

puts "checking Artist class"

artist1_paintings = artist1.paintings
artist2_galleries = artist2.galleries
art1_cities = artist1.cities
total_exp = Artist.total_experience
most_pro = Artist.most_prolific
all_a = Artist.all

"Checking Painting Class"

price = Painting.total_price

"checking Gallery class"

all = Gallery.all
paint = gal2.paintings
art = gal2.artists
name = gal1.artist_names
most_ex = gal2.most_expensive_painting

binding.pry
