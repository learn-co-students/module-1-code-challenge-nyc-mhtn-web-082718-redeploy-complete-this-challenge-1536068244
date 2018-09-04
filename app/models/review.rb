require "pry"

class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer_is
    self.customer
    # I had to change the name of customer to customer_is to avoid the stack level too deep error by calling the method within the method.
  end

  # def restaurant
  # 
  # end

end
