class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # * `Artist#paintings`
  #   * Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  # * `Artist#galleries`
  #   * Returns an `array` of all the galleries that an artist has paintings in
  def galleries 
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  # * `Artist#cities`
  #   * Return an `array` of all cities that an artist has paintings in
  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  # * `Artist#create_painting`
  #   * Given the arguments of `title`, `price` and `gallery`, 
  #   creates a new painting belonging to that artist
  def create_painting(title,price,gallery)
    Painting.new(title, price, self, gallery)
  end

  # * `Artist.all`
  #   * Returns an `array` of all the artists
  def self.all
    @@all
  end

  # * `Artist.total_experience`
  #   * Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    self.all.map do |artist|
      artist.years_experience
    end.sum
  end

  def self.paintings_per_year_per_artist
    paintings_per_year = {}
    self.all.map do |artist|
      paintings_per_year[artist] = artist.years_experience / artist.paintings.count
    end
    paintings_per_year.sort_by{|key,value| value}
  end
  
  # * `Artist.most_prolific`
  #   * Returns an `instance` of the artist with the highest amount of 
  #   paintings per year of experience.  
  def self.most_prolific
    self.paintings_per_year_per_artist.last[0]
  end
end
