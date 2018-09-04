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

  def self.find_by_name(string)
    self.all.find do |restaurants|
      string == restaurants.name
    end
  end

  def customers
    Review.all.map do |reviews|
      if reviews.restaurant == self
        reviews.customer
        #need to change this method to remove nils
      end
    end
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def average_star_rating
    array = []
    Review.all.each do |reviews|
      if reviews.restaurant == self
        array << reviews.rating
      end
    end
    array.sum/array.length
  end

  def longest_review
    array = []
    Review.all.each do |reviews|
      if reviews.restaurant == self
        array << reviews.content
      end
    end
    #array method to find longest string in array of content 
  end

end
