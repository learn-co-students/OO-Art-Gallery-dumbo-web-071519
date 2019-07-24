class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # * `Gallery#paintings`
  #   * Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  # * `Gallery#artists`
  #   * Returns an `array` of all artists that have a painting in a gallery
  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end


  # * `Gallery#artist_names`
  #   * Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  # * `Gallery#most_expensive_painting`
  #   * Returns an `instance` of the most expensive painting in a gallery
  def most_expensive_painting
    self.paintings.sort_by{|painting| painting.price}.last
  end

  # * `Gallery.all`
  #   * Returns an `array` of all the galleries
  def self.all
    @@all
  end

end
