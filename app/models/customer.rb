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

  def self.find_by_name(full_name)
    first_and_last = full_name.split
    all.find do |customer|
      customer.first_name == first_and_last.first && customer.last_name == first_and_last.last
    end
  end

  def self.find_all_by_first_name(first_name)
    all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end
end

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

# - *~*done*~* `Customer.all`
#   - *~*done*~* should return **all** of the customer instances
# - *~*done*~* `Customer.find_by_name(name)`
#   - *~*done*~* given a string of a **full name**, returns the **first customer** whose full name matches
# - *~*done*~* `Customer.find_all_by_first_name(name)`
#   - *~*done*~* given a string of a first name, returns an **array** containing all customers with that first name
# - *~*done*~* `Customer.all_names`
#   - *~*done*~* should return an **array** of all of the customer full names
