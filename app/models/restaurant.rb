class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|info| info.name == name}
  end

  def customers
    #Select when reviews.all.restaurant == self.name
    #Push all customers names into an array
    #Use uniq to filter out duplicates
  end

  def reviews
    #Select when reviews.all.name == self.name
  end

  def average_star_rating
    #Use Review method
    #Add all of the review values as floats
    #Divide by length of review array
  end

  def longest_review
    #Use Review method
    #Sort_by length and reverse and then .first
  end

  end

end
