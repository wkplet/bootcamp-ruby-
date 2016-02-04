require 'colorize'

puts "This is blue".colorize(:red)
puts " 

"
def boatchoice 
puts "#{"welcome to my BOATINGSTORE, please pick a boat".colorize(:green)} 
A) #{"sailingboat".colorize(:blue)}
B) #{"motorboat".colorize(:red)}
C) #{"Both boats".colorize(:yellow)}
[A-C]:"
boat = gets.chomp.upcase
if boat == "A"
puts "#{"
YOU CHOSE A SAILINGBOAT
      ^
     /|\\\n
    / | \\\n
 __--------_
  \SAILING/
This sailing boat is very fast and doesnt cost you any fuel. It is however one million euro".colorize(:blue)}"
elsif boat == "B"
puts "#{"
YOU CHOSE A MOTORBOAT
this motorboat will cost you a lote of fuelmoney, but i will sell it to you for only half a million euro".colorize(:red)}"
elsif boat == "C"
puts "#{"WOW, you chose both boats. This will cost you a lot, namely 1.5 million euro plus fuel money.".colorize(:yellow)}"
else boat !="B" || boat!= "A" ||boat !="C"
boatchoice
end
end

boat = boatchoice


def back_to_menu
puts "

To return to menu type #{"'back'".colorize(:green)}, to pay type  'pay' or type anything else if you want to #{"WIN".colorize(:red)} a free boat."
back = gets.chomp
if back == "back"
boatchoice
elsif back == "pay"
puts "transfer money to....."
else back != "back" || back != "pay" 
def guess(secret, tries)
  puts "Try #{tries}: "
  input = gets.chomp.to_i

  return if input == secret || "stop"

  if input > secret
    puts "Lower!"
  else input < secret
    puts "Higher!"

  end

  guess(secret, tries + 1)
end

puts "

Try to guess my #{"secret number".colorize(:red)} (between 0 and 100) to win this boat..or type 'stop' to quite"

secret = rand(100)
guess(secret, 0)

puts "You guessed it! come and collect your boat, unless you pressed 'stop'"
end
end

back=back_to_menu


