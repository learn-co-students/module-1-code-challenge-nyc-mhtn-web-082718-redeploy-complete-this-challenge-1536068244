require "pry"

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    # got to iterate over an array that includes all the customers for that specific restaurant instance. This likely means a helper method before this that creates that array and using uniq on that
  end


end
