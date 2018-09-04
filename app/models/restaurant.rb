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
    Restaurant.all.find do |rest_obj|
      rest_obj.name == name
    end
  end

end

# rest1 = Restaurant.new("McDonalds")
# rest2 = Restaurant.new("Knickerbocker")
# rest3 = Restaurant.new("Chipotle")
# rest4 = Restaurant.new("McDonalds")

# Restaurant.find_by_name("Knickerbocker")
