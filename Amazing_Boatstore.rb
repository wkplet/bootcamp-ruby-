require 'colorize'
require '/Amazing_Boattypes.rb'
require '/Amazing_Actual_Store.rb'

cruiser = Boattypes.new
cruiser.id = 1
cruiser.price = 100000
cruiser.brand = "Bavaria"
cruiser.stock = 10
cruiser.description = "The Bavaria is an alltime classic sailingyacht for the family"

speedboat = Boattypes.new
speedboat.id = 2
speedboat.price = 200000
speedboat.brand = "Bayliner"
speedboat.stock = 10
speedboat.description = "The Bayliner is a real cool choice for speedaddicts"

skiff = Boattypes.new
skiff.id = 3
skiff.price = 50000
skiff.brand = "Wherry"
skiff.stock = 10
skiff.description = " This old olympic type of rowingboat is a real headturner on the Thames"

boatstore = Store.new
boatstore.add(sailingboat)
boatstore.add(speedboat)
boatstore.add(skiff)


# START SHOP
puts "=====================================".colorize(:red)
puts "WELCOME TO THE BOATINGSTORE".colorize(:blue)
puts "=====================================".colorize(:red)
boatstore.menu
