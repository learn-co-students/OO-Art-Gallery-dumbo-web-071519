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
    Painting.all.select{|work| work.gallery == self}
  end

  def artists
    self.paintings.map{|work| work.artist}.uniq
  end

  def artist_names
    self.artists.map{|artist|artist.name}
  end

  def most_expensive_painting
    self.paintings.map{|painting| painting.price}.max
  end



end
