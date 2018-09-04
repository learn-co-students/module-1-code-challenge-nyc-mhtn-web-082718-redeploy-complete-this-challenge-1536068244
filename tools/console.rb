require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Chris", "Mierzwa")
c2 = Customer.new("Ty", "Simcox")
c3 = Customer.new("Eric", "Holenberg")
c4 = Customer.new("Michael", "Schwartz")

r1 = Restaurant.new("Accents")
r2 = Restaurant.new("Chilis")
r3 = Restaurant.new("BWW")
r4 = Restaurant.new("Fridays")

rev1 = Review.new(1, "Worst place", c1, r1)
rev2 = Review.new(2, "Would eat there again", c2, r2)
rev3 = Review.new(5, "favorite place", c3, r3)
rev4 = Review.new(3, "so so", c4, r4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
