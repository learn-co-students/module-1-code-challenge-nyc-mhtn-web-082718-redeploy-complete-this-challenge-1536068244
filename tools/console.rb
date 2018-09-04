require_relative '../config/environment.rb'
require_relative '../app/models/review.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new('Billy', 'Bob')
c2 = Customer.new('Joey', 'Mack')
c3 = Customer.new('Mike', 'Sams')
c4 = Customer.new('Mike', 'Fans')
r1 = Restaurant.new('Good Food')
r2 = Restaurant.new('Bad Food')
r3 = Restaurant.new('OK Food')
r4 = Restaurant.new('Good Drinks')

rv1 = c1.add_review(r1, 'It was good', 5)
rv2 = c1.add_review(r3, 'It was OK', 3)
rv3 = c1.add_review(r2, 'It was Bad', 1)
rv4 = c2.add_review(r1, 'It was good', 4)
rv5 = c3.add_review(r4, 'Drinks were good', 4)
rv6 = c3.add_review(r3, 'Drinks were ok', 3)
rv7 = c1.add_review(r3, 'This is a long review, It was Better', 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
