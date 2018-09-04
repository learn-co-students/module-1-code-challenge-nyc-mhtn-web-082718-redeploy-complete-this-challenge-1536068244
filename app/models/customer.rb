require 'pry'

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
    if self == name
      return name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select {|string| string == name}
  end

  def self.all_names
    @@all.collect {|x| x.full_name}
  end

  def add_review(restaurant, content, rating)
    newreview = Review.new(restaurant, content, rating)
  end

  def num_reviews
    Customer.count
  end

  def restaurants
    
  end
end
