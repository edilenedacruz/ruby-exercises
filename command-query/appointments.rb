class Appointments

  def initialize
    @slots = Array.new
  end

  def earliest
    @slots.min
  end

  def at(time)
    @slots.push(time)
  end
end
