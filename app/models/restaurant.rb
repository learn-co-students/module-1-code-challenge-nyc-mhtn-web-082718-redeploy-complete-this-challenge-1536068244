class Restaurant
  #many to many relationship with customer joined through reviews
  #many to many with reviews

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
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
