class FoodTruck
  attr_reader :name
  attr_accessor :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
      return 0
    end
    # require"pry";binding.pry
    @inventory[item]
  end

  def stock(item, quanitity)
    if @inventory[item] == nil
    @inventory[item] = quanitity
    else
      @inventory[item] += quanitity
    end
  end

  def potential_revenue
    sum = 0
    inventory.each do |key, value|
      sum += (key.price * value)
    end
    sum
  end



  end
