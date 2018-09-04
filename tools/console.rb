require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

r1 = Restaurant.new('applebees')
r2 = Restaurant.new('olive garden')
r3 = Restaurant.new('tgi')

c1 = Customer.new('mary', 'lee')
c2 = Customer.new('chris', 'song')
c3 = Customer.new('vincent', 'mu')
c4 = Customer.new('pearl', 'parker')
c5 = Customer.new('jacob', 'chambers')
c6 = Customer.new('olga', 'petrova')
c7 = Customer.new('mary', 'kim')

c1.add_review(r1, 'terrible. allergic to everything they make here.', 1)
c1.add_review(r2, 'allergic to everything here too. I should just not eat out.', 1)
c1.add_review(r3, 'I was finally able to eat, thank you', 5)
c1.add_review(r3, 'just kidding. Got rashes the second time here', 1)
c2.add_review(r1, 'asdfadfsaadf', 2)
c3.add_review(r1, 'asdoj oweifjoa fwiejfowj adf', 4)
c4.add_review(r1, 'potato', 4)
c5.add_review(r2, 'ajojedjao', 5)

# c1.num_reviews => 4
# c1.restaurants => [r1, r2, r3]
# r1.reviews.length => 4
# r1.customers => c1, c2, c3, c4
# r2.customers => c1, c5
# r1.average_star_rating => 2.75
# r2.average_star_rating => 3.0
# r3.average_star_rating => 3.0
# r1.longest_review => 'terrible. allergic to ...'

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
