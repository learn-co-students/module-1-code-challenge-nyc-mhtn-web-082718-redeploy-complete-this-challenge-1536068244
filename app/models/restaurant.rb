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
    @@all.find do |rest|
      rest.name == name
    end
  end

  def customers
    cust = []
    Review.all.each do |rev|
      if rev.restaurant == self
        cust << rev.customer
      end
    end
    cust.uniq
  end

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def average_star_rating
    sum = 0
    count = 0
    Review.all.each do |rev|
      if rev.restaurant == self
        sum += rev.rating
        count += 1
      end
    end
    sum / count
  end

  def longest_review
    h = {}
    Review.all.each do |rev|
      if rev.restaurant == self
        h[rev] = rev.content.length
      end
    end
    h.max_by { |rev, length| length }
  end

  # def longest_review
  #   reviews << self.reviews
  #   reviews.each do |rev|
  #     rev.sort_by {|rev.content| word.length}
  #   end
  # end dosnt work yet


end



# Restaurant.all Done
# returns an array of all restaurants
#
# Restaurant.find_by_name(name) Done
# given a string of restaurant name, returns the first restaurant that matches
