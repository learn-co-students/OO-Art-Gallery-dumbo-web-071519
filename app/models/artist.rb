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
    self.paintings.map{|painting| painting.gallery}
  end

  def cities
    self.galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
     years_array = self.all.map{|artist| artist.years_experience}
     years_array.inject(0){|sum, v| sum + v}
  end

  def self.most_prolific
      prolific_array = self.all.map{|artist| (artist.paintings.count.to_f)/(artist.years_experience.to_f)}
      prolific_array.index(prolific_array.max)
      self.all[2]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
