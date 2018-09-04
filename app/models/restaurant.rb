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
    @@all.find {|restaurant| restaurant.name == name}
  end

  def customers
    array = []
    Review.all.each do |single_review|
      array << single_review.customer if single_review.restaurant == self
    end
    array.uniq
  end

  def reviews
    Review.all.select do |single_review|
      single_review.restaurant == self
    end
  end

  def average_star_rating
    total = 0
    own_reviews = self.reviews
    own_reviews.each do |single_review|
      total += single_review.rating
    end
    total.to_f / own_reviews.length
  end

  def longest_review
    current_content = ""
    own_reviews = self.reviews

    own_reviews.each do |single_review|
      if current_content == ""
        current_content = single_review.content
      elsif current_content.length < single_review.content.length
        current_content = single_review.content
      end
    end
    current_content
  end

end
