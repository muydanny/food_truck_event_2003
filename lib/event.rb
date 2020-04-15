class Event

  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    names = []
    @food_trucks.each do |food_truck|
      names << food_truck.name
    end
    names
  end
  # `food_trucks_that_sell` that takes an
  # argument of an item represented as a String.
  # It will return a list
  # of FoodTrucks that have that item in stock.

  def food_trucks_that_sell(desired_item)
    food_truck_list = []
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item|
        if item.first.name == desired_item.name
          food_truck_list << food_truck
        end
      end
    end
    food_truck_list
  end



end
