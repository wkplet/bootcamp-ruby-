class Animal
  attr_accessor :age, :color, :name

  def move
    puts "#{@name} moving"
  end
end
class Parrot < Animal
  attr_accessor :amount_of_feathers
end

koekie = Parrot.new
koekie.name = "Kookie"
koekie.amount_of_feathers = 10
koekie.age = 7

snoes = Animal.new
snoes.name = " snoes"
animals = [koekie, snoes]
animals.each do |animal|
  animal.move
end
