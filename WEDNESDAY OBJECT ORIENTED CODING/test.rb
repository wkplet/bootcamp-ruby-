

cat = {:color => ' red' , age: ' 7 years', fur_type: ' long'}
puts cat[:age]

class Cat

#constructor method
def initialize color, age
  @color = color
  @age = age
  @name = name
end
def age
  return @age
end
def purr
  puts "#{@name} SAYS  RRRRRRRR"
  end
end
cat = Cat.new(:red, '7years')
