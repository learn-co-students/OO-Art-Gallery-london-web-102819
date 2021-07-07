class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    price_list = self.all.map {|p| p.price}
    total = price_list.sum
  end

end

=begin
  * `Painting.all`
    * Returns an `array` of all the paintings

  * `Painting.total_price`
    * Returns an `integer` that is the total price of all paintings
=end
