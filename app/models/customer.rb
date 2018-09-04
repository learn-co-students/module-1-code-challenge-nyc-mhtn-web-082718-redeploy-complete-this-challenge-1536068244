class Customer
  @@all = []
  attr_accessor :first_name, :last_name, :reviews

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []

    @@all << self
  end

  def self.all
    @@all
    # @@all.map { |c| "customer object #{c.full_name}" }
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.find { |c| c.full_name == name }
  end

  def self.find_all_by_first_name(name)
    @@all.select { |c| c.first_name == name }
  end

  def self.all_names
    @@all.map { |c| c.full_name }
  end

  def restaurants
    @reviews.map { |rv| rv.restaurant }.uniq
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    @reviews.count
  end
end
