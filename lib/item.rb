class Item

  attr_reader :name


  def initialize(item_info)
    @name = item_info[:name]
    @price = item_info[:price]
  end

  def price
    @price.gsub(/[^\d\.]/, '').to_f
  end
end
