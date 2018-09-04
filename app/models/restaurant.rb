#restaurant has many reviews
class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# `Restaurant.all`- returns an array of all restaurants DONE
  def self.all
    @@all
  end

# #Restaurant.find_by_name(name)` - given a string of restaurant name, returns the first restaurant that matches
#   def self.find_by_name(name)
      #using .find to find the FIRST restaurant that matches
#       restaurant.name == self
#     end
#   end

# - `Restaurant#customers` - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    more_reviews = reviews.map do |review|
      review.customer
    end
    more_reviews.uniq
  end

#   - `Restaurant#reviews` - returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

#   - `Restaurant#average_star_rating` - returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    total = 0
    Review.all.select do |review|
      if review.restaurant == self

      end
    end
    total
  end

  #   - `Restaurant#longest_review`
  #     - returns the longest review content for a given restaurant

  #want to interate through 'reviews' with reviews.content then get the length of the content and get highest by using max_by
  def longest_review
    total = 0
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

end
