class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    self.all.map{|artist| artist.years_experience}.inject(0,:+)
  end

  def profilic
    self.paintings.count /  self.years_experience
  end

  def self.most_profilic
    self.all.inject do |memo, artist|
      if memo.profilic < artist.profilic
        artist
      else
        memo
      end
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end