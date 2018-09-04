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
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    found_customers = []
    self.all.each do |customer|
      if customer.first_name == name
        found_customers << customer
      end
    end
    found_customers
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,content,rating)
  end

  def num_reviews
    count = 0
    Review.all.each do |review|
      if review.customer == self
        count += 1
      end
    end
    count
  end

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.map do |review|
      review.restaurant
    end.uniq
  end

end #Customer class
