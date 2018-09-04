require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("papa johns")
r2 = Restaurant.new("pizza hut")
r3 = Restaurant.new("dominos")

c1 = Customer.new("stacy", "dice")
c2 = Customer.new("patrick", "mud")
c3 = Customer.new("mike", "kale")

#title, author, rating, restaurant, customer
review1 = Review.new("good-good", "luigi", 5, "this is good", r1, c1)
review2 = Review.new("yummy", "peach", 3, "this is bad", r2, c2)
review3 = Review.new("so bad", "mario", 1, "superb", r3, c3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
