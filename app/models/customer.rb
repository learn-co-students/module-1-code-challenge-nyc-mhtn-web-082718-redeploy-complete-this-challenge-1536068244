class Customer
  attr_accessor :first_name, :last_name, :fn

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all.push(self)
  end

  def full_name
    @fn = "#{first_name} #{last_name}"
    @fn
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|info| "#{info.first_name} " + "#{info.last_name}" == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|i| i.first_name == name}
  end

  def self.all_names
    an=[]
    self.all.each {|info| an.push("#{info.first_name} " + "#{info.last_name}")}
    an
  end

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant, content, rating)
  end

  def num_reviews
    nr= Review.all.group_by {|info| info.customer}
    nr.select {|keys, info| keys == self}.values.length
  end

  def restaurants
    cr =[]
    Review.all.select {|info| info.customer == self}
    cr.uniq
  end
end
