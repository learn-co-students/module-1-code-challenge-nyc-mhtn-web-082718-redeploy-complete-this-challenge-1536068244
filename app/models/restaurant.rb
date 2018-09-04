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
    # - given a string of restaurant name, returns the first restaurant that matches
    @@all.select do |restaurants|
      restaurants.name == name
    end
  end

  def customers
    customers = []
    Review.all.each do |reviews|
      if reviews.restaurant == self
        customers << reviews.customer
      end
    end
    customers.uniq
  end

  def reviews
    all_reviews = []
    Review.all.each do |reviews|
      if reviews.restaurant == self
        all_reviews << reviews
      end
    end
    all_reviews
  end

  def average_star_rating
    all_ratings = []
    Review.all.each do |reviews|
      if reviews.restaurant == self
        all_ratings << reviews.rating
      end
    end
    sum = 0
    all_ratings.each do |rating|
      sum += rating
    end
    sum/all_ratings.length
  end

  def longest_review
    review_content = []
    self.reviews.each do |review|
      review_content << review.content
    end
    review_length = {}
    review_content.each do |content|
      review_length[content] = content.length
      # binding.pry
    end
    review_length.sort
    review_length[review_length.keys.last]
  end

end
