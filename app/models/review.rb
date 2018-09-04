class Review

# returns the review content, as a string, for a particular review
# returns the star rating for a restaurant. This should be an integer from 1-5
# returns the restaurant object for that given review
# returns the customer object for that given review
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

# returns all of the reviews
  def self.all
    @@all
  end

end #end of Review class
