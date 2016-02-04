



class Boattypes
  attr_accessor :price, :brand, :stock,
  def describe
    puts "#{@brand}"
  end
end

class Sailingboat < Boattypes
  def describe
    puts "#{@brand} sails very fast"
  end
end

class Motorboat < Boattypes
  def describe
    puts "#{@brand} is very pollutive"
  end
end

class Rowingboat < Boattypes
  def describe
    puts "#{@brand} is very sporty"
  end
end

cruiser = Sailingboat.new
cruiser.price = 100000
cruiser.brand = "Bavaria"
cruiser.stock = 10

speedboat = Motorboat.new
speedboat.price = 200000
speedboat.brand = "Bayliner"
speedboat.stock = 10

skiff = Rowingboat.new
skiff.price = 50000
skiff.brand = "Wherry"
skiff.stock = 10


boattypes = [cruiser, speedboat, skiff]


boattypes.each do |boattype|

  puts " Congratulations with your #{boattype.price} euro #{boattype.brand}"

  boattype.describe

end
