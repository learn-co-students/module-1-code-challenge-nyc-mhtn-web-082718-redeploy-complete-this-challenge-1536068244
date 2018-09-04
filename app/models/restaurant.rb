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
    all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    Review.all.select { |review| review.restaurant == self  }.map { |review| review.customer }.uniq
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
    total_rating_var = self.reviews.map { |review| review.rating }.reduce(:+)
    number_of_reviews = self.reviews.count
    total_rating_var / number_of_reviews
  end

  def longest_review
    array_of_review_content = self.reviews.map { |review| review.content }
    array_of_review_content.sort.pop
  end

end
