require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new("Harry", "Bloom")
c2 = Customer.new("Marvin", "Johnson")
c3 = Customer.new("Lucy", "Xavier")
c4 = Customer.new("John", "Frost")
c5 = Customer.new("John", "Gardner")


r1 = Restaurant.new("Red Lobster")
r2 = Restaurant.new("Wendys")
r3 = Restaurant.new("Ppppapa Johns")
r4 = Restaurant.new("Olive Garden")
r5 = Restaurant.new("Tony's Pizza")


w1 = Review.new(r1, c1, 5, "Fan.. tastic")
w2 = Review.new(r4, c2, 3, "Sorta.. tastic")
w3 = Review.new(r2, c5, 3, "Sort.. tastic")
w4 = Review.new(r2, c1, 4, "Great..")
w5 = Review.new(r5, c4, 1, "DONT GO!")
w6 = Review.new(r1, c1, 1, "DONT GO!")
w7 = Review.new(r1, c1, 5, "Absolutely the best meal i've ever had! Fan.. tastic")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
