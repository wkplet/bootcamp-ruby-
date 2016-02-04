
def boatchoice
puts "#{"welcome to my BOATINGSTORE, please pick a boat".colorize(:green)}
A) #{"sailingboat".colorize(:blue)}
B) #{"motorboat".colorize(:red)}
C) #{"rowingboats".colorize(:yellow)}
[A-C]:"
boat = gets.chomp.upcase
  if boat == "A"
puts "#{"
YOU CHOSE A SAILINGBOAT
      ^
     /|\\\n
    / | \\\n
 __--------_
  \SAILING/".colorize(:blue)}"
  elsif boat == "B"
puts "#{"
YOU CHOSE A MOTORBOAT".colorize(:red)}"
  elsif boat == "C"
puts "#{"
WOW, you chose a Rowingboat".colorize(:yellow)}"
    else boat !="B" || boat!= "A" ||boat !="C"
boatchoice
  end
end

def howmany number
    number = gets.chomp
    if number > @stock
      puts "We don't have that many, please pick less"
      howmany
    else
      puts "have fun with your #{number} boats"
    end
  end
