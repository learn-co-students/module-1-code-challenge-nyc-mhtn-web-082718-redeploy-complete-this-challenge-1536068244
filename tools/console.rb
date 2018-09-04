require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Weenie Hut Jr.")
r1 = Restaurant.new("Salty Spitoon")

c1 = Customer.new("Spongebob", "Squarepants")
c2 = Customer.new("Spongebob", "Roundpants")
c3 = Customer.new("Harold", "Squarepants")
c4 = Customer.new("Goofy", "Goober")

rev1 = Review.new(c1, r1, "Nails in my cereal", 1)

##Make sure find_by_name checks that both the first and last name are correct.
# Customer.find_by_name("Spongebob Squarepants")
# Customer.find_by_name("Spongebob Roundpants")
# Customer.find_by_name("Harold Squarepants")

# Customer.find_all_by_first_name("Spongebob")

# Customer.all_names

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
