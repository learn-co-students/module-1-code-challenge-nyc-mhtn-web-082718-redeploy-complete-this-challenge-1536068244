# - `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

class Customer
  @@all = []

  attr_accessor :first_name, :last_name

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #   - given a string of a **full name**, returns the **first customer** whose full name matches
    @@all.find do |cust|
      cust.full_name == name
    end
  end

  def self.find_all_by_first_name(first_name)
    #   - given a string of a first name, returns an **array** containing all customers with that first name
    @@all.select do |cust|
      cust.first_name == first_name
    end
  end

  def self.all_names
    #   - should return an **array** of all of the customer full names
    @@all.map do |cust|
      cust.full_name
    end
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    # - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    # - Returns the total number of reviews that a customer has authored
    # get all the reviews
    # find the ones authored by self
    # return length of array

    self.reviews.length
  end

  def restaurants
    # - Returns a **unique** array of all restaurants a customer has reviewed
    # my_reviews = Review.all.select do |rev|
    #   rev.author == self
    # end

    self.reviews.map { |rev| rev.restaurant }.uniq
  end

  def reviews
    # Wrote this to not repeat myself in other methods.
    Review.all.select do |rev|
      rev.author == self
    end
  end
end
