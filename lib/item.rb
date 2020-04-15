class Item
  attr_reader :name
  def initialize(info)
    @name = info[:name]
    @price = info[:price]
  end


  def price

    @price.gsub("$", "").to_f
  end
end
