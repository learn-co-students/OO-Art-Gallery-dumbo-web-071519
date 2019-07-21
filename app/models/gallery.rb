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
    Painting.all.select do |piece|
      piece.gallery == self
    end
  end

  def artists
    paintings.map do |piece|
      piece.artist
    end.uniq
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.max do |piece|
      piece.price
    end
  end


end
