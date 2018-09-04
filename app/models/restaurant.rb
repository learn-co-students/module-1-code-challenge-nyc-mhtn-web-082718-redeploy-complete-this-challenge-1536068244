require 'pry'

class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# returns all of the reviews
  def self.all
    @@all
  end

# given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    # select all review for particular restaurant into array
    # map over the array of reviews and retrieve the customer names assocaited with each review in to new array.
  end

  def reviews
    # select all review for particular restaurant into array

  end

  def average_star_rating
    # use review method to get all of my reviews
    
  end

  def longest_review

  end

  #binding.pry

end #end of Restaurant class
