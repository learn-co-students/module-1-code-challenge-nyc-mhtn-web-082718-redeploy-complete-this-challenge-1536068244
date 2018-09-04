class Review
  attr_reader :customer_obj, :resturant_obj, :review_content, :star_rating

  @@all = []

  def initialize(customer_obj, resturant_obj, review_content, star_rating)
    @customer_obj = customer_obj
    @resturant_obj = resturant_obj
    @review_content = review_content
    @star_rating = star_rating

    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    customer_obj
  end

  def restaurant
    resturant_obj
  end

  def rating
    star_rating
  end

  def content
    review_content
  end
end

# - *~*done*~* `Review.all`
#   - *~*done*~* returns all of the reviews
# - *~*done*~* `Review#customer`
#   - *~*done*~* returns the customer object for that given review
#   - *~*done*~* Once a review is created, I should not be able to change the author
# - *~*done*~* `Review#restaurant`
#   - *~*done*~* returns the restaurant object for that given review
#   - *~*done*~* Once a review is created, I should not be able to change the restaurant
# - *~*done*~* `Review#rating`
#   - *~*done*~* returns the star rating for a restaurant. This should be an integer from 1-5
# - *~*done*~* `Review#content`
#   - *~*done*~* returns the review content, as a string, for a particular review
