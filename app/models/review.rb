##If you were asking for

  # def rating(number)
  #   @rating = number
  # end

  #I promise I can do it!

class Review

  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all.push(self)
  end

  def self.all
    @@all
  end

end
