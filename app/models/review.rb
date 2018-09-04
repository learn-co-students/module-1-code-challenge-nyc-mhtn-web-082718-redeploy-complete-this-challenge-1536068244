#review belongs to restaurant and customer
class Review

  attr_accessor :title, :rating, :content, :customer,
  attr_reader :author, :restaurant

  @@all = []

  def initialize(title, author, rating, content, restaurant, customer)
    @title = title
    @author = author
    @rating = rating
    @content = content
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

# - `Review.all` - returns all of the reviews
  def self.all
    @@all
  end

end



# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author DONE


# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant DONE


# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5


# - `Review#content`
#   - returns the review content, as a string, for a particular review
