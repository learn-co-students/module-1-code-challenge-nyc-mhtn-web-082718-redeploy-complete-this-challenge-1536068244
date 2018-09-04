require "pry"

#### Build out the following methods on the `Review` class






#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review

class Review

  attr_accessor :review_name, :star_rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(review_name, customer, restaurant)
    @review_name = review_name
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    return self.customer
    # return customer object
  end

  # - `Review#restaurant`
  #   - returns the restaurant object for that given review

  def restaurant
    return self.object
  end

end
#
# rev1 = Review.new("Great!", "Jordan Farkas", "Chipotle")
# rev2 = Review.new("Awful!", "Larry Johnson", "McDonalds")
# rev3 = Review.new("Great!", "Kristaps Porzingis", "Knickerbocker")

# rev2.customer
