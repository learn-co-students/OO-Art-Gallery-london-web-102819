class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    #before you start, read the readme and figureout which model should be the middle man.
    #an artist has many paintings
    #a gallery has many paintings
    #by giving the painties, add the gallery and artist to be initialized 
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
end
