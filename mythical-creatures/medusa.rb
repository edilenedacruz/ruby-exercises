require_relative 'person'

class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count >= 3
      victim.stone = true
      @statues.push(victim)
      lucky = @statues.shift
      lucky.stone = false
    else
      victim.stone = true
      @statues.push(victim)
    end
  end
end
