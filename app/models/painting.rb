class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0){|total, p| total += p.price }
  end

end
