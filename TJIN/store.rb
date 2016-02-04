class Store

  def initialize
    @catalogue = []
    @total = 0
    @basket = []
    @random_compliments = [
		"Excellent choice!", 
		"Nicely done!", 
		"Great choice!", 
		"Awesome!", 
		"Wonderfull!", 
		"Very very nice!", 
		"I would have done the same!", 
		"Wowowow!", 
		"Such a great choice!",
		"You're the best!",
		"Delicious!",
		"Mmmmmmmmmmmmm!",
		"Yessssss!",
		"Beautiful!",
		"Omgomgomgomgomgomg!"
		]
	@fortune_cookie = [
		"You will find a bushel of money", 
		"Your smile will tell you what makes you feel good.",
		"A clean conscience is a soft pillow",
		"A journey of 1000 miles begins with one step.",
		"A beauty is a woman you notice, a charmer is a women who notices you.",
		"A new challenge is near.",
		"Look for a new horizon and you will succeed!",
		"Be fluent like water, flow like a river.",
		"Do not confuse what you want for what you need.",
		"With wisdom comes grey hairs.",
		"Better to fart than have belly ache",
		"Music sounds better with you.",
		"Teach me how to dougie.",
		"Bow wow wow yippee yow yippee yay"
		]
  end

  def add(product)
    @catalogue.push(product)
  end

  def inventory
    @catalogue.each do |product|
    	puts "#{product.id}: #{product.name} - #{product.price} euros"
  	end
  end

  
  def addbasket(index)
  	@basket.push(@catalogue[index])
  	@total = @total + @catalogue[index].price
  end
  
  def showbasket
  	puts "-----------------------------".colorize(:light_red)
  	puts "YOUR BASKET".colorize(:light_red)
  	puts ""
  	@basket.each do |product|
  		puts "+ #{product.name}".colorize(:light_red)
  	end
  	puts "-----------------------------".colorize(:light_red)
  	puts "TOTAL AMOUNT".colorize(:blue)
  	puts ""
  	puts "#{@total} EUROS".colorize(:blue)
  	puts "-----------------------------".colorize(:blue)
  	puts ""
  	menu
  end

  def menu
  	puts "Here's a list of our products:"
  	puts ""
  	inventory
  	puts "5: See basket"
  	puts "6: Checkout - #{@total} euros".colorize(:red)
  	puts "7: Free fortune cookie".colorize(:yellow)
  	puts ""
  	puts "Please select a product (1-7)"
  	product_id = gets.chomp.to_i
  	if product_id == 6
  		cashout
  	elsif product_id < 5
  		puts ""
  		puts @random_compliments.sample.colorize(:green)
  		puts ""
  		puts @catalogue[product_id - 1].description.colorize(:green)
  		puts ""
  		addbasket(product_id - 1)
  		showbasket
  	elsif product_id == 7
  		fortunecookie
  	elsif product_id == 5
  		showbasket
  	else
  		puts "not valid."
  		menu
  	end
  end

  def cashout
  	puts "=====================================".colorize(:blue)
  	puts "Thanks for ordering!".colorize(:blue)
	puts "The total costs will be #{@total} euro's!".colorize(:blue)
	puts "See you next time!".colorize(:blue)
	puts "=====================================".colorize(:blue)
  end

  def fortunecookie
  	puts "*************************************".colorize(:yellow)
  	puts "FORTUNE COOKIE WISDOM".colorize(:yellow)
  	puts @fortune_cookie.sample.colorize(:yellow)
  	puts "*************************************".colorize(:yellow)
  	puts ""
  	menu
  end
end
