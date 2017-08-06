class Adult
  attr_reader :sober
  def initialize
    @sober = true
    @booze_count = 0
  end

  def sober?
    @sober
  end

  def consume_an_alcoholic_beverage
    @booze_count += 1
    if @booze_count >= 3
      @sober = false
    end
  end
end
