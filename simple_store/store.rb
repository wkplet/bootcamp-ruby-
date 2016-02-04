class Store
  def initialize
    @catalogue= []
  end
  def add_cat cat
    @catalogue.push(cat)
  end
  def inventory
    @catalogue.each do |item|
      puts item.name
    end
  end
end
