require_relative 'costume'
require_relative 'bag'

class TrickOrTreater
  attr_reader :costume
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !bag.empty?
  end

  def bag
    @bag
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.candies.pop
  end

end
