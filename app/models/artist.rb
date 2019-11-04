class Artist

  attr_reader :name, :years_experience
  @@all=[]
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all <<self 
  end

  def self.all
    @@all
  end
  def paintings #all the paintings by an artist
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries#Returns an array of all the galleries that an artist has paintings in
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities # all cities that an artist has paintings in
    galleries.map{|painting|painting.city}
  end

  def self.total_experience #of ALL artists
    self.all.reduce(0){|sum, artist| sum +=artist.years_experience}
  end

  

  def painting_per_year_ratio#artist's paintings/year
      #this is a_what_ method?  instance
      #therefore, use all "local" methods and instance variables! Don't go and select! This method works on one artist at a time.  
      if @years_experience==0
        paintings.size
      else 
        (paintings.size/@years_experience.to_f).round(2)
      end
  end

  def self.most_prolific
    self.all.max_by{|artist| artist.painting_per_year_ratio}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
