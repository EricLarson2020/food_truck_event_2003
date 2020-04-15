class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)

    item_name = item.name

    trucks_sell = @food_trucks.select do |truck|

      truck.inventory.keys.each do |inventory|
          inventory.name == item_name

        end
    end
    trucks_sell

  end

  def total_inventory
    complete_inventory = Hash.new
    @food_trucks.each do |truck|
      truck.inventory.each do |item|

       #require"pry";binding.pry

       if complete_inventory[item] == nil
         complete_inventory[item] = {

           quantity: total_quantity(item),
           food_trucks: food_trucks_that_sell(item)
         }
    end
  end
end
complete_inventory
require"pry";binding.pry


end

  def overstocked_items
    over_items = []
    @food_trucks.each do |truck|

      truck.inventory.keys.each do |item|
        if total_quantity(item) > 50
          over_items << item
        end
      end
    end
    over_items
  end

  def total_quantity(current_item)
    quantity = 0
    @food_trucks.each do |truck|

      truck.inventory.each do |item|

         if current_item[0].name == item[0].name

          quantity += item[1]

        end
    end
  end
  quantity

  end


end
