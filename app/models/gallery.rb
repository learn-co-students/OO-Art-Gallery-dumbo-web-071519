class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    self.artists.map{|artist| artist.name}    
  end

  def most_expensive_painting
    self.paintings.inject do |memo, painting|
      if memo.price < painting.price
        painting
      else
        memo
      end
    end
  end

end