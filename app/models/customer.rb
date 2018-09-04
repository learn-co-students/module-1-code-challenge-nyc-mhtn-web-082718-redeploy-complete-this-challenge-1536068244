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

  def self.find_all_by_first_name(name)
    # - given a string of a first name, returns an **array** containing all customers with that first name
    @@all.select do |customers|
      customers.first_name == name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    total_reviews = []
    Review.all.each do |reviews|
      if reviews.customer == self
        total_reviews << reviews
      end
    end
    total_reviews.length
  end

  def restaurants
    restaurants = []
    Review.all.each do |reviews|
      if reviews.customer == self
        restaurants << reviews.restaurant
      end
    end
    restaurants
  end

end
