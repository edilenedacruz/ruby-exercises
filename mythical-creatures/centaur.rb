class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
  end

  def shoot
    @cranky += 1
    if @cranky < 3
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @cranky += 1
    if @cranky < 3
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    true if @cranky >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @cranky = 0
    end
  end

  def lay_down
    @standing = false
    @cranky = 3
  end

  def laying?
    true if @standing == false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    @cranky = 0
    false if @standing == false
    "Now I'm sick" if @standing == true
  end
end
