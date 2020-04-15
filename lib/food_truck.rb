class FoodTruck

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
    @default_stock = 0
  end

  def check_stock(item)
    @inventory.sum do |item|
      item[1] += @default_stock
    end
  end

  def stock(item, quantity)
    @inventory[item] = quantity
  end

  # the sum of all their items'
  # price * quantity.

  def potential_revenue
    @inventory.sum do |inventory|
      inventory.first.price * inventory.last
    end
  end
end
