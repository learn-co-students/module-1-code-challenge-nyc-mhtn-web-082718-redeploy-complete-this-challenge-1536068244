class Review
  @@all = []

  def self.all
    @@all
  end

  attr_reader :author, :restaurant
  attr_accessor :rating, :content

  def initialize(author, restaurant, rating, content)
    @author = author
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end
end
