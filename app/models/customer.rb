require "pry"




# Complete above first
#
#   - `Customer#add_review(restaurant, content, rating)`
#     - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
#   - `Customer#num_reviews`
#     - Returns the total number of reviews that a customer has authored
#   - `Customer#restaurants`
#     - Returns a **unique** array of all restaurants a customer has reviewed


class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  # - `Customer.find_by_name(name)`
  #   - given a string of a **full name**, returns the **first customer** whose full name matches

  def self.find_by_name(name)

  end

  # - `Customer.find_all_by_first_name(name)`
  #   - given a string of a first name, returns an **array** containing all customers with that first name

  def self.find_all_by_first_name(first_name)
    Customer.all.select do |cust_obj|
      cust_obj.first_name == first_name
    end
  end

  # - `Customer.all_names`
  #   - should return an **array** of all of the customer full names

  def self.all_names
    binding.pry
    @@all_names = []
    @@all_names << full_name
  end

end
#
# c1 = Customer.new("Jordan", "Farkas")
# c2 = Customer.new("Kristaps", "Porzingis")
# c3 = Customer.new("Larry", "Johnson")

# Customer.all_names
