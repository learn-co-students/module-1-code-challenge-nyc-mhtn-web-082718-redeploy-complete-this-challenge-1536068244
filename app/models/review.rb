class Review
  @@all = []
  attr_accessor :customer, :restaurant, :content, :rating

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating

    @@all << self

    restaurant.reviews << self

    customer.reviews << self
  end

  def self.all
    @@all
  end

end
