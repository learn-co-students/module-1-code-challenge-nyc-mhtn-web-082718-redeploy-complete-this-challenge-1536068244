require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("City Wok")
r2 = Restaurant.new("Bob's Burgers")
r3 = Restaurant.new("Central Perk")
r4 = Restaurant.new("Kulushkat")
r5 = Restaurant.new("City Wok")

c1 = Customer.new("Mallory","Archer")
c2 = Customer.new("Shinji","Ikari")
c3 = Customer.new("Chris","Stull")
c4 = Customer.new("Chris","Pratt")

rev1 = Review.new(c1,r1,"They drowned my cocktail.",1)
rev2 = Review.new(c1,r2,"There's something about the owner's voice that I just don't like.",2)
rev3 = Review.new(c1,r4,"I don't give my money to terrorists.",0)
rev4 = Review.new(c2,r3,"I'm definitely not brave enough to drink this coffee.",5)
rev5 = Review.new(c2,r1,"Asuka and Rei seem to like it so I guess I do too.",4)
rev6 = Review.new(c3,r4,"The shawafel is delicious but too expensive.",4)
rev7 = Review.new(c3,r2,"We're all thanking you.",5)
rev8 = Review.new(c3,r1,"Definitely city Chinese food.",3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
