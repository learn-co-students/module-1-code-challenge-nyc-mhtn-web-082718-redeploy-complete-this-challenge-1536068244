require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new("Uncle", "Sam")
c2 = Customer.new("Matt", "Damon")
r1 = Restaurant.new("Wendy's")
r2 = Restaurant.new("Taco Bell")
rv1 = Review.new(c1, r1, 5, "hi")
rv2 = Review.new(c2, r2, 1, "bye")
rv3 = Review.new(c2, r1, 1, "bye")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
