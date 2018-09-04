require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1= Customer.new("Ethan", "Jones")
c2= Customer.new("Ethan", "Bates")
c3= Customer.new("Zack", "Lazow")
c4= Customer.new("Andy", "Phillipson")

r1= Restaurant.new("Best Pizza")
r2= Restaurant.new("Lilia")
r3= Restaurant.new("Chavella")
r4= Restaurant.new("Pizza Hut")

v1= Review.new(c1, r1, 5, "This is the best pizza ever")
v2= Review.new(c1, r2, 5, "This is the best meal I ever had")
v3= Review.new(c3, r3, 3, "It's okay")
v4= Review.new(c4, r4, 1, "I hate this restaurant")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
