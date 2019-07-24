class Artist

  attr_reader :name, :years_experience
  @@all =[]
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|work| work.artist == self}
  end
  

  def galleries
    self.paintings.map{|x|x.gallery}
  end
  
  
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
  
  def self.total_experience
    @@all.map{|artist| artist.years_experience}.reduce(:+)
  end
  
  def cities
    self.galleries.uniq.map{|g|g.city}
  end

  def self.most_prolific
      art_array = self.all.map{|artist| (artist.paintings.count.to_f)/(artist.years_experience.to_f)}
      art_array.index(art_array.max)
      self.all[2]
  end





end