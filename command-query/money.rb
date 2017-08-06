class Money
  attr_reader :amount
  def initialize
    @amount = 0
  end

  def earn(moolah)
    @amount += moolah
  end

  def spend(moolah)
    if moolah > @amount
      "You can't spend what you don't have."
    else
      @amount -= moolah
    end
  end
end
