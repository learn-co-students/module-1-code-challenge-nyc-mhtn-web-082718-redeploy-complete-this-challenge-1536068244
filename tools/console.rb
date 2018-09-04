require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("sebastian", "karolkieiwcz")
c2 = Customer.new("sabrina", "sokolovsky")
c3 = Customer.new("matthew", "guttman")
c4 = Customer.new("matthew", "michaels")

res1 = Restaurant.new("portillos")
res2 = Restaurant.new("nathans")
res3 = Restaurant.new("chipotle")

rev1 = Review.new(c1, res2, "this place sucks", 1)
rev2 = Review.new(c2, res1, "heck yeah!", 5)
rev3 = Review.new(c2, res3, "great place", 4)

rev4 = c2.add_review(res2, "ewww", 2)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
