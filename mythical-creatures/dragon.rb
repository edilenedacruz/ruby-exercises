class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @victims = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @victims += 1
    @hungry = false if @victims >= 3
  end
end
