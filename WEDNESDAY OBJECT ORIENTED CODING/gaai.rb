Class Parrot
def initialize age, name, color
  @age = age
  @name = name
  @color = color
end
def speak
  puts "#{@name} want a cookie"
end
end
koekie = Parrot.new(17, ' Koekie', :grey)
sjaak = Parrot.new(17, ' sjaak', :grey)
feizel = Parrot.new(17, 'feizel', :grey)
parrots = [koekie, sjaak, feizel]
koekie.speak
sjaak.speak
feizel.speak

parrots.each do |parrot|
  parrot.speak
end
