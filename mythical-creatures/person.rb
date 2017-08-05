class Person
  attr_reader :name
  attr_accessor :stone
  def initialize(name)
    @name = name
    @stone = false
  end

  def stoned?
    @stone
  end
end
