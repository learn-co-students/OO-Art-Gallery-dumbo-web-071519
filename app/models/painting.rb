class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  # * `Painting.all`
  #   * Returns an `array` of all the paintings
  def self.all
    @@all
  end


  # * `Painting.total_price`
  #   * Returns an `integer` that is the total price of all paintings
  def self.total_price
    self.all.map do |painting|
      painting.price
    end.sum
  end

end
