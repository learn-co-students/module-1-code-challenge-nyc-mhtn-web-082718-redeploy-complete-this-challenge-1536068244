class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # should return **all** of the customer instances
  def self.all
    @@all
  end

  # given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    self.all.find do |cust|
      cust.full_name.downcase == name.downcase
    end
  end

  # given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select do |cust|
      cust.first_name.downcase == name.downcase
    end
  end

  # should return an **array** of all of the customer full names
  def self.all_names
    self.all.map do |cust|
      cust.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # Associations and Aggregate Methods

  # helper method
  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  # given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    if (1..5) === rating
      Review.new(self, restaurant, content, rating)
    end
  end

  # Returns the total number of reviews that a customer has authored
  def num_reviews
    self.my_reviews.length
  end

  # Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    self.my_reviews.map do |review|
      review.restaurant
    end.uniq
  end

end # end Customer class
