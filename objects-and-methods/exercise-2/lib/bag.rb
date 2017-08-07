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

  def count
    @candies.count
  end

  def contains?(type)
    @candies.any? { |candy| candy.type == type }
  end

  def grab(type)
    @candies.select! do |candy|
      candy.type == type
    end.first
  end

  def take(number)
    taken = []
     number.times do
      taken << @candies.pop
      end
    taken
  end
end
