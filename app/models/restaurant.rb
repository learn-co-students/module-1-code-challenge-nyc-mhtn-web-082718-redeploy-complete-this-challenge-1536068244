require "pry"

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |resturant|
      resturant.name == namea
    end
  end

  def reviews
    Review.all.select do |review|
      review.resturant_obj == self
    end
  end

  def customers
    my_reviews.map do |review|
      review.customer_obj
    end.uniq
  end


end



# - *~*done*~* `Restaurant#customers`
#   - *~*done*~* Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - *~*done*~* `Restaurant#reviews`
#   - *~*done*~* returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant

# - *~*done*~* `Restaurant.all`
#   - *~*done*~* returns an array of all restaurants
# - *~*done*~* `Restaurant.find_by_name(name)`
#   - *~*done*~* given a string of restaurant name, returns the first restaurant that matches
