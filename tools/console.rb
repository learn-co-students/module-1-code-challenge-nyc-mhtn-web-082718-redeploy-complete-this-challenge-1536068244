require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Peter", "Griffin")
customer2 = Customer.new("Glenn", "Quagmire")
customer3 = Customer.new("Joe", "Swanson")
customer4 = Customer.new("Peter", "Parker")
restaurant1 = Restaurant.new("Hell's Kitchen")
restaurant2 = Restaurant.new("Pizza Hut")
restaurant3 = Restaurant.new("Dominos")
restaurant4 = Restaurant.new("Papa Johns")
review1 = Review.new(restaurant1, customer1, "I like to watch people get yelled at.", 5)
review2 = Review.new(restaurant2, customer2, "This isn't a hut at all!", 1)
review3 = Review.new(restaurant3, customer3, "This is extremely alright.", 3)
review4 = Review.new(restaurant4, customer4, "My papa's name aint John!", 1)
review5 = Review.new(restaurant1, customer2, "Giggity", 4)
review6 = Review.new(restaurant1, customer2, "Actually nah its not that great", 3)
review7 = Review.new(restaurant4, customer1, "Hey this restaurant must belong to my dad!", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
