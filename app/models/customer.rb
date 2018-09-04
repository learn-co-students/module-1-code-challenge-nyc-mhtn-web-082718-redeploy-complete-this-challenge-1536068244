class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    first = name.split[0]
    last = name.split[1]
    self.all.find do |customer|
      customer.first_name == first && customer.last_name == last
    end
  end

  def self.find_all_by_first_name(name)
    first = name.split[0]
    self.all.select do |customer|
      customer.first_name == first
    end
  end


  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end

  def num_reviews
    count = 0
    Review.all.each do |review|
      review.customer == self ? count += 1 : nil
    end
    count
  end

  def restaurants
    array = Review.all.select do |review|
      review.customer == self
    end
    binding.pry

    array.map do |review|
      review.restaurant
    end.uniq
  end
end
