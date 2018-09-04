require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rs1 = Restaurant.new("Junzi")
rs2 = Restaurant.new("Tarry Lodge")
rs3 = Restaurant.new("Mamouns")
rs4 = Restaurant.new("Zinc")

c1 = Customer.new("Anna", "A")
c2 = Customer.new("Becca", "B")
c3 = Customer.new("Charlie", "C")
c4 = Customer.new("Davine", "D")
c5 = Customer.new("Charlie", "E")
c6 = Customer.new("Charlie", "F")

rv1 = c1.add_review(rs1, "this place sucks", 1)
rv1 = c1.add_review(rs1, "a bit better", 2)
rv1 = c1.add_review(rs1, "i guess it's fine", 3)
rv2 = c1.add_review(rs2, "eh", 3)
rv3 = c2.add_review(rs3, "ok", 4)
rv4 = c2.add_review(rs4, ":(", 2)
rv5 = c3.add_review(rs3, ";(", 2)
rv6 = c3.add_review(rs2, "i hate it here", 1)
rv7 = c4.add_review(rs1, "dope", 5)
rv8 = c4.add_review(rs4, ":)", 4)

# puts "Customer.all -------------"
# puts Customer.all
# puts "Restaurant.all -------------"
# puts Restaurant.all
# puts "Review.all -------------"
# puts Review.all
# puts "------------------------------------------------------------------------------"
# puts "------------------------------------------------------------------------------"
#
# puts "Customer.find_by_name(\"Davine D\") -------------"
# puts Customer.find_by_name("Davine D")
# puts "Customer.find_all_by_first_name(\"Charlie\") -------------"
# puts Customer.find_all_by_first_name("Charlie")
# puts "Customer.all_names -------------"
# puts Customer.all_names
# puts " -------------"
#
# puts "Restaurant.all -------------"
# puts Restaurant.all
# puts "Restaurant.find_by_name(\"Junzi\") -------------"
# puts Restaurant.find_by_name("Junzi")
# puts "------------------------------------------------------------------------------"
# puts "------------------------------------------------------------------------------"
#
# puts "Review.all -------------"
# puts Review.all
# puts "rv1.customer -------------"
# puts rv1.customer
# puts "rv2.restaurant -------------"
# puts rv2.restaurant
# puts "rv3.rating -------------"
# puts rv3.rating
# puts "rv4.content -------------"
# puts rv4.content
# puts "------------------------------------------------------------------------------"
# puts "------------------------------------------------------------------------------"
#
# puts "c1.add_review(rs4, \"hi\", 10) -------------"
# puts c1.add_review(rs4, "hi", 10)
# puts "c1.num_reviews -------------"
# puts c1.num_reviews
# puts "c1.restaurants -------------"
# puts c1.restaurants
# puts "rs1.customers -------------"
# puts rs1.customers
# puts "rs1.reviews -------------"
# puts rs1.reviews
# puts "rs1.average_star_rating -------------"
# puts rs1.average_star_rating
# puts "rs1.longest_review -------------"
# puts rs1.longest_review



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
