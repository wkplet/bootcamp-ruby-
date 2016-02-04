require './products'
require './store'
require 'colorize'

mamawonton = Products.new
mamawonton.id = 1
mamawonton.name = "Mama Wontons"
mamawonton.price = 5
mamawonton.description = "Mama Wontons are our homemade Wontons with a harty filling and a delicious ginger soy dressing. 
They are the best wontons that you'll ever eat."

uncleudon = Products.new 
uncleudon.id = 2
uncleudon.name = "Uncle Udon"
uncleudon.price = 6
uncleudon.description = "Uncle udon is freshly made every day by our uncle Jackie.
You can taste the powerful kneading of the dough!
Floating in a delicious broth of goodiness, this will make you whole again."

grannytofu = Products.new
grannytofu.id = 3
grannytofu.name = "Granny Tofu"
grannytofu.price = 4
grannytofu.description = "Granny Tofu is specially imported from Sichuan province, where China's best grannies make the best tofu. 
Contrary to what their name suggests, they will make you young again!"

babygreens = Products.new
babygreens.id = 4
babygreens.name = "Baby Greens"
babygreens.price = 5
babygreens.description = "Our baby green salad will make you slim and tender. 
This will definitely make you 21 again!"

tjinstoko = Store.new
tjinstoko.add(mamawonton)
tjinstoko.add(uncleudon)
tjinstoko.add(grannytofu)
tjinstoko.add(babygreens)

# START SHOP
puts "=====================================".colorize(:blue)
puts "WELCOME TO TJINS TOKO!".colorize(:blue)
puts "YOUR NUMBER ONE SOURCE FOR GOOD FOOD!".colorize(:blue)
puts "=====================================".colorize(:blue)
tjinstoko.menu
