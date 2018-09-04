require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Chris', 'Bojemski')
c2 = Customer.new('Evans', 'Wang')
c3 = Customer.new('Jordan', 'Farkas')
c4 = Customer.new('Jordan', 'Sternberg')

r1 = Restaurant.new("BK")
r2 = Restaurant.new("Red Lobster")
r3 = Restaurant.new("McDonald's")

# Testing making a Review obj...
re1 = Review.new(c1, r1, 4, "I liked it.")
re2 = Review.new(c2, r2, 3, "I have no opinion.")

# Testing adding reviews...
re3 = c1.add_review(r3, "It's the same as the other one.", 3)
re4 = c1.add_review(r3, "Another review for the same McDs.", 3)

# Testing getting multiple reviews for a single restaurant...
re5 = c2.add_review(r1, "I destroy these fries like I destroy America's enemies. (With artillary.)", 5)
re6 = c3.add_review(r1, "All I eat are almonds.", 2)
re7 = c3.add_review(r1, "No, seriously that's it.", 1)

c1.num_reviews
c1.restaurants

r1.reviews
r1.average_star_rating
r1.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
