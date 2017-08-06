require_relative 'item'

class Clearance

  def initialize
    @clearance = []
  end

  def best_deal
    if @clearance.empty?
      nil
    else
      @clearance.sort_by do |item|
        item.price - item.discount
      end.first.name
    end
  end

  def << item
    @clearance.push(item)
  end
end
