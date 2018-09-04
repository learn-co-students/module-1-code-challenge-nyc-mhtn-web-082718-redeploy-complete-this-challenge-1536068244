require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jordan", "Thompson")
c2 = Customer.new("Jordan", "Marcus")

r1 = Restaurant.new("Shanghai Asian Manor")
r2 = Restaurant.new("Chipotle")
r3 = Restaurant.new("Nobu")

rv1 = Review.new(c1, r1, "Delicious Dumplings", 5)
rv2= Review.new(c1, r2, "Ew", 2)
rv3= Review.new(c2, r1, "Yumm!", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
