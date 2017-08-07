require_relative 'costume'
require_relative 'bag'

class TrickOrTreater
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def has_candy?
    @bag.candies.empty? ? false : true
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    candy = @bag.candies.pop
    @sugar_level += candy.sugar
  end

  def sugar_level
    @sugar_level
  end
end
