class Vehicle
  attr_accessor :color, :speed, :name, :license
  def describe
    puts "#{@name} has #{@color} and can move #{@speed} miles an hour"
    end
def allowed age
  if  age > @license
    puts " you can buy the #{name}"
  else age < @license
    puts " you cannot buy the #{name}"
    end
  end
end

class Car < Vehicle
  def ride
    puts " #{name} can ride quite fast"
  end
end

class Plane < Vehicle
  def fly
    puts "#{name} can fly really fast"
  end
end


ford = Car.new
ford.color = :red
ford.speed = 180
ford.name = "Ford"
ford.license = 18

fokker = Plane.new
fokker.speed = 2000
fokker.color = :blue
fokker.name = "Fokker"
fokker.license = 20

vehicles = [ford, fokker]
vehicles.each do |vehicle|
 puts " You selected #{vehicle.name} with the color #{vehicle.color}
 that can drive #{vehicle.speed} miles an hour. Your license status is #{vehicle.license}"
vehicle.allowed 19

end
