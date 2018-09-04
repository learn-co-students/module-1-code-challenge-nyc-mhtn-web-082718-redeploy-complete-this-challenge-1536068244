class Customer
  #many to many relationship with restaurant joined through reviews
  #many to many with reviews

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
    #iterating through each name created in customers with find method
    #returning the first one that matches the argument
    Customer.all.find do |full_name|
      full_name.full_name == name
    end
  end

  #---- not complete yet

  def self.find_all_by_first_name(name)
    #use a select to return all values with the first name equal to the string argument
    Customer.all.select do |first_name|
      first_name.first_name == name
    end
  end

  #------

  def self.all_names
    #use map here
    Customer.all.map do |names|
      names.full_name
    end
  end

  #___________

  def add_review(restaurant, content, rating)
    Review.new(rating, content, self, restaurant)
  end

  def num_reviews
    total = 0
    Review.all.each do |review|
      if review.customer == self
        total += 1
      end
    end

    total

    #could have been done easier rushed for time.
  end

  def helper
    Review.all.select |review|
      review.customer == self
  end

  def retaurants(helper)
    helper.uniq
  end





end
