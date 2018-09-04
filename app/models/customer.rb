class Customer
  attr_accessor :first_name, :last_name

@@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def self.find_by_name(name)
  self.all.find do |customers|
    customers.full_name == name
  end
end

def self.find_by_first_name(name)
  self.all.select do |customers|
    customers.first_name == name
  end
end

def self.all_names
  array = []
  self.all.each do |customers|
    array << customers.full_name
  end
  array
end

def add_review(restaurant, rating, content)
  Review.new(self, restaurant, rating, content)
end

def num_reviews
  number = Review.all.select do |reviews|
    reviews.customer == self
  end
  number.length
end

def restaurants
  Review.all.map do |reviews|
    # binding.pry
    if reviews.customer == self
      reviews.restaurant
      #need to change this method to remove nils in array returned. Alternatively, could push values into an array declared before enumable
    end
  end
end


end
