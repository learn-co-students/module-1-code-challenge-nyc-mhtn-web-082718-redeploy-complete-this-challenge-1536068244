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
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    Review.all.select do |review|
      review.restaurant == self
    end.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    my_reviews = []
    Review.all.each do |review|
      if review.restaurant == self
        my_reviews << review
      end
    end
    my_reviews
  end

  def average_star_rating
    star_total = 0
    count = 0
    Review.all.each do |review|
      if review.restaurant == self
        star_total += review.rating
        count += 1
      end
    end
    if count == 0
      puts "There are no reviews for this restaurant yet."
    else
      star_total/count #float/integer shenanigans
    end
  end

  def longest_review
    longest_review = ""
    Review.all.each do |review|
      if review.restaurant == self && review.content.size > longest_review.size
        longest_review = review.content
      end
    end
    longest_review
  end

end #Restaurant class
