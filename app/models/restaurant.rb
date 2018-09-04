# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches

class Restaurant
  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #   - given a string of restaurant name, returns the first restaurant that matches

    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def customers
    # - Returns a **unique** list of all customers who have reviewed a particular restaurant.
    # Get all the reviews for this restaurant.
    # Then map over those to get the customers.
    # Then call uniq on that to elim duplicates.
    self.reviews.map { |rev| rev.author }.uniq
  end


  def reviews
    # - returns an array of all reviews for that restaurant
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def average_star_rating
    # - returns the average star rating for a restaurant based on its reviews
    # Get all reviews and sum the ratings from each.
    # Divide these by the number of reviews left on this restaurant.

    summed_ratings = self.reviews.inject(0) do |sum, review|
      sum + review.rating
    end

    summed_ratings / self.reviews.length
  end

  def longest_review
    # - returns the longest review content for a given restaurant
    # Get all reviews for this restaurant.
    # Sort them by the length of the review.
    # Reverse the array.
    # Return the content from the first element.
    # Be sure not to alter the @@all attr of Review.

    self.reviews.sort do |a, b|
      # Could also do b <=> a, but this feels more straightforward.
      a.content.length <=> b.content.length
    end.reverse[0].content
  end
end
