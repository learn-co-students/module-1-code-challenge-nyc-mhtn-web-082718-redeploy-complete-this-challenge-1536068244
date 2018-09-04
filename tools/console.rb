require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Dave", "Spencer")
c2 = Customer.new("John", "Smith")
c3 = Customer.new("Sarah", "Judge")
c4 = Customer.new("Sarah", "Field")
c4 = Customer.new("Jill", "Knox")
c4 = Customer.new("Carl", "Bunt")
c4 = Customer.new("Rachel", "Mikesa")



r1 = Restaurant.new("Joe's")
r2 = Restaurant.new("Chez Pascale")
r3 = Restaurant.new("The Bay")
r4 = Restaurant.new("Community")
r5 = Restaurant.new("Pisticci")


rv1 = Review.new(c1, r1, 4, "I loved Joe's")
rv2 = Review.new(c2, r2, 4, "Fine")
rv3 = Review.new(c1, r2, 1, "Pascale is a really mean guy")
rv4 = Review.new(c1, r1, 3, "Went to Joe's again, wasn't as good")
rv5 = Review.new(c3, r1, 5, "Joe's is great")
rv5 = Review.new(c3, r5, 5, "Loved it")
rv5 = Review.new(c3, r3, 1, "Got food poisoning")
rv6 = Review.new(c2, r3, 1, "Got food poisoning even though I was warned")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
