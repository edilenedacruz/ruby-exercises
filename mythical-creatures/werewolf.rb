class Werewolf
  attr_reader :name, :location
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    if @human == false
      @human = true
    else
      @human = false
      @hungry = true
    end
  end

  def wolf?
    true if @human == false
  end

  def hungry?
    @hungry
  end

  def eat(victim)
    if wolf?
      victim.status = :dead
      @hungry = false
      true
    else
      false
    end
  end
end
