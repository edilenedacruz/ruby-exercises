require_relative 'candy'

class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies.push(candy)
  end

  def contains?(candy_type)
    @candies.any? do |candy|
      candy.type == candy_type
    end
  end
end
