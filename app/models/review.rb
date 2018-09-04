require'pry'
class Review

  attr_writer :first_name, :last_name, :restaurant, :rating

  @@all = []

  def initialize(first_name, last_name, restaurant, rating)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end


# - `Review#customer`
#  - returns the customer object for that given review

# - `Review#restaurant`
#  - returns the restaurant object for that given review




# - `Review#content`
#  - returns the review content, as a string, for a particular review
#
