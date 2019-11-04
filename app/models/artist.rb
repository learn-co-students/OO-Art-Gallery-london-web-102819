class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{ |p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end

  def cities
    paintings.map {|p| p.city}
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum += artist.years_experience}
  end

  def paintings_per_year_ratio
    if @years_experience == 0
      paintings.size
    else
      paintings.size / years_experience.to_f.round(2)
    end
  end

  def self.most_prolific
    self.all.max_by{|a| a.paintings_per_year_ratio}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
