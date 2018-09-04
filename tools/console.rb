require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Olivier", "Willems")
c2 = Customer.new("Charlie", "Russo")
c3 = Customer.new("May", "Kim")
c4 = Customer.new("Jordan", "Farkas")
c5 = Customer.new("Olivier", "Giroud")

r1 = Restaurant.new("Upstate")
r2 = Restaurant.new("The Smith")
r3 = Restaurant.new("Han Dynasty")
r4 = Restaurant.new("Blue Hill")

rev1 = Review.new(c1, r2, 3)
rev2 = Review.new(c2, r1, 4)
rev3 = Review.new(c1, r3, 4)
rev4 = Review.new(c3, r4, 5)
rev5 = Review.new(c5, r4, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
