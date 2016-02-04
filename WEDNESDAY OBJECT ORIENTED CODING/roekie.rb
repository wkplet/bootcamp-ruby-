



cat = {:color => ' red' , age: ' 7 years', fur_type: ' long'}


class Cat

#constructor method
def initialize color, age, name
  @color = color
  @age = age
  @name = name
end
def age
  return @age
end
def purr
  puts "#{@name} SAYS  RRRRRRRR #{@age}" #
  end
end
cat = Cat.new(:red, '7years', 'snoes')
cat.purr
