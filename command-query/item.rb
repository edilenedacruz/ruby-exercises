class Item
  attr_reader :name, :price, :discount
  def initialize(name, price)
    @name = name
    @price = price[:price]
    @discount = price[:discount]
  end
end
