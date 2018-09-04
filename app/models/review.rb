require 'pry'

class Review
  attr_reader :name
  @@all = []

  def initialize(name)x
    @@all << self
  end

  def self.all
    @@all
  end

  def customer(self)
    self.Customer
  end

  def restaurant(self)
    self.Restaurant
  end

  def rating
  end

  def content
  end
end
