class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # returns an array of all restaurants
  def self.all
    @@all
  end

  # given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name.downcase == name.downcase
    end
  end

  # Associations and Aggregate Methods

  # returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # Returns a **unique** list of all customers who have reviewed a particular restaurant
  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  # returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    sum = self.reviews.reduce(0) do |memo, review|
      memo += review.rating
    end

    sum.to_f / self.reviews.length
  end

  # returns the longest review content for a given restaurant
  def longest_review
    self.reviews.max_by do |review|
      review.content.length
    end
  end

end # end Restaurant class
