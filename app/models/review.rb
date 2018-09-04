class Review

  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  # the customer in attr reader returns the customer object for that given review
  # reader also stops you from chaging it once the review has been written
  # the restaurant in attr accessor returns the restaurant object for that given review
  # reader also stops you from chaging it once the review has been written


  @@all = []

  def initialize(rating, content, customer, restaurant)
    @rating = rating
    @content = content
    @customer = customer
    @restaurant = restaurant

    @@all << self

  end

  def self.all
    @@all
  end

end
