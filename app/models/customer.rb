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

  def self.find_by_name(name)
    @@all.find do |cust|
      name == cust.full_name
    end
  end

  def self.find_all_by_first_name(name)
    # names = []
    @@all.select do |cust|
      name == cust.first_name
    end
  end

  def self.all_names
    @@all.map do |cust|
      cust.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    total = 0
    Review.all.each do |rev|
      if rev.customer == self
        total += 1
      end
    end
    total
  end

  def restaurants
    rest = []
    Review.all.each do |rev|
      if rev.customer == self
        rest << rev.restaurant
      end
    end
    rest.uniq
  end


end


# Customer.all done
# should return all of the customer instances

# Customer.find_by_name(name) done
# given a string of a full name, returns the first customer whose full name matches

# Customer.find_all_by_first_name(name) Done
# given a string of a first name, returns an array containing all customers with that first name

# Customer.all_names Done
# should return an array of all of the customer full names
