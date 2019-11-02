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

 # Returns an array all the paintings by an artist
  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end

  #Return an array of all cities that an artist has paintings in
  def cities
    galleries.map {|g| g.city}
  end

 
  #Returns an integer that is the total years of experience of all artists
  def self.total_experience
    (self.all.map {|a| a.years_experience}).sum
  end

  #Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    total_experience_array = self.all.map {|a| a.years_experience}.sort
    the_most = total_experience_array.pop()
  end

  #Given the arguments of title, price and gallery, creates a new painting belonging to 
  ##title, price, artist, gallery
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end


=begin
Artist#paintings


Artist#galleries

Returns an array of all the galleries that an artist has paintings in
Artist#cities

Return an array of all cities that an artist has paintings in
Artist.total_experience

Returns an integer that is the total years of experience of all artists
Artist.most_prolific

Returns an instance of the artist with the highest amount of paintings per year of experience.
Artist#create_painting

Given the arguments of title, price and gallery, creates a new painting belonging to that artist
  
=end 
