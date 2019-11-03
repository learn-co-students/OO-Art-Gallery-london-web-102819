class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |p|
      p.artist == self
    }
  end

  def galleries
    paintings.map { |p|
      p.gallery
    }.uniq
  end

  def cities
    galleries.map { |g|
      g.city
    }
  end

  def self.total_experience
    total_years = 0
    Artist.all.each { |a|
      total_years += a.years_experience.to_i
    }
    total_years
  end

  def self.most_prolific
    Artist.all.max_by { |a|
      a.paintings.length / a.years_experience
    }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end
end
