require "pry"
#  u added the require pry

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jordan", "Farkas")
c2 = Customer.new("Kristaps", "Porzingis")
c3 = Customer.new("Larry", "Johnson")

rest1 = Restaurant.new("McDonalds")
rest2 = Restaurant.new("Knickerbocker")
rest3 = Restaurant.new("Chipotle")

rev1 = Review.new("Great!", c1, rest3)
rev2 = Review.new("Awful!", c3, rest1)
rev3 = Review.new("Great!", c2, rest2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
