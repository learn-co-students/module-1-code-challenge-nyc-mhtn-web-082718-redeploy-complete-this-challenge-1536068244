require "pry"

class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@full_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    @@full_names.push("#{first_name} #{last_name}")
    # There's probably a clearer way to do this that doesn't defeat the purpose of this particular method - just returning the full name of the customer instance it's being called on as opposed to adding to an array of all the full_names. Will come back to it time permitting.
  end

  def self.all
    @@all
  end

  def self.full_names
    @@full_names
  end

  def self.find_by_name(name)
    # ok, so you might need a helper method for this one, creating an array of full names.
    #then within this method you can iterate over that array and use the find iterator to select the first one that matches the name argument
    @@full_names.find do |full_name|
      full_name == name
    end
    # shoot, I may have misinterpreted the purpose of this question. move on to building the rest of the classes, but I should figure out how to return the customer instance as opposed to just the string of their name.
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    # technically this is what the previous method full_name does now... rats. I'm going to move onto other deliverables, but I reckon this can be achieved as follows:
    # in the initialization, combine first and last names, then push those into the @@full_names array instead of doing it as I have so far.
    # Will fix if time permits.
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

end
