class Kid
  attr_reader :grams_of_sugar_eaten
  def initialize
    @grams_of_sugar_eaten = 0
    @hyper = false
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
  end

  def hyperactive?
    if @grams_of_sugar_eaten > 55
      @hyper = true
    else
      @hyper
    end
  end
end
