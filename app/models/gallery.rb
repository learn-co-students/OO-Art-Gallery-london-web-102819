class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|p| p.gallery == self}
  end

  def artists
    paintings.map(&:artist)
  end

  def artist_names
    artist.map{|artist| artiat.name}
  end

  def most_expensive_painting
    paintings.max_by{|g| g.price }
  end

end
