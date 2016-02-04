class Store

  def initialize
    @catalogue = []
    @total = 0
    @basket = []
  end

  def add(boattype)
    @catalogue.push(boattype)
  end

  def inventory
    @catalogue.each do |boattype|
      puts "#{boattype.id}: #{boattype.brand} - #{boattype.price} euros"
    end
  end

  def addbasket(index)
    @basket.push(@catalogue[index])
    @total = @total + @catalogue[index].price
  end

  def showbasket
    puts "-----------------------------".colorize(:light_red)
    puts "Your Boats".colorize(:light_red)
    puts ""
    @basket.each do |boattype|
      puts "+ #{boattype.brand}".colorize(:light_red)
    end
    puts "-----------------------------".colorize(:light_red)
    puts "will cost you".colorize(:blue)
    puts ""
    puts "#{@total} EUROS".colorize(:blue)
    puts "-----------------------------".colorize(:blue)
    puts ""
    menu
  end

  def menu
    puts "These are our Boats:"
    puts ""
    inventory
    puts "4: See your Boats"
    puts "5: Checkout - #{@total} euros".colorize(:red)

    puts ""
    puts "Please select a product (1-3)"
    boattype_id = gets.chomp.to_i
    if boattype_id == 5
      cashout
    elsif boattype_id < 5
      puts ""
      puts @catalogue[boattype_id - 1].description.colorize(:green)
      puts ""
      addbasket(boattype_id - 1)
      showbasket
    elsif boattype_id ==3
      showbasket
    else
      puts "not valid."
      menu
    end
  end

  def cashout
    puts "=====================================".colorize(:red)
    puts "Thanks for boatshopping!".colorize(:blue)
  puts "The total costs will be #{@total} euro's!".colorize(:blue)
  puts "See you next time!".colorize(:blue)
  puts "=====================================".colorize(:red)
  end
end 
