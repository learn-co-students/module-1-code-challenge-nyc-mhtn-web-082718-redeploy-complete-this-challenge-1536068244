require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Daniel", "Walz")
c2 = Customer.new("Perri", "Gregg")
c3 = Customer.new("Andy", "Dick")
c4 = Customer.new("Pope", "Francis")

r1 = Restaurant.new("Chipotle")
r2 = Restaurant.new("The Main Cheese")
r3 = Restaurant.new("Jack's Pickle")
r4 = Restaurant.new("Yo Mama's House")

rw1 = Review.new(c1.first_name, c1.last_name, r1, 4)
rw2 = Review.new(c2.first_name, c2.last_name, r2, 4)
rw3 = Review.new(c3.first_name, c3.last_name, r3, 5)
rw4 = Review.new(c4.first_name, c4.last_name, r4, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
