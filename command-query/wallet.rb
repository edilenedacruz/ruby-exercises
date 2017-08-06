class Wallet
  attr_reader :cents
  def initialize
    @cents = 0
  end

  def currency(type)
    case type
    when :penny
      1
    when :nickel
      5
    when :dime
      10
    when :quarter
      25
    when :dollar
      100
    end
  end

  def << (type)
    @cents += currency(type)
  end

  def take(*type)
    type.each do |t|
      if currency(t) <= @cents
        @cents -= currency(t)
      end
    end
  end
end
