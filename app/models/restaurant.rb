class Restaurant
  @@all = []
  attr_accessor :name, :reviews

  def initialize(name)
    @name = name
    @reviews = []

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find { |rs| rs.name == name }
  end

  def customers
    @reviews.map { |rv| rv.customer }.uniq
  end

  def average_star_rating
    @reviews.map { |rv| rv.rating.to_f }.inject(:+) / @reviews.count.to_f
  end

  def longest_review
    @reviews.sort_by { |rv| rv.content.length }.reverse[0]
  end

end
