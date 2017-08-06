require_relative 'product'

class Catalogue
  def initialize
    @catalogue = []
  end

  def cheapest
    if @catalogue.empty?
      nil
    else
      @catalogue.sort_by { |product| product.price }.first.item
    end
  end

  def << product
    @catalogue.push(product)
  end
end
