require'pry'
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
    # Iterate through the Class of Restaurant looking for the argument that is given,
    #then return the first object of the class that matches the argument.
    self.find do |restaurant|
      restaurant == name
    end
  end

end



#Restaurant.find_by_name(name)
#given a string of restaurant name, returns the first restaurant that matches
