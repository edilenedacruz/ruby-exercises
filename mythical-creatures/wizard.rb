class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested == true if @spells < 3
  end

  def cast
    @spells += 1
    "MAGIC MISSILE"
  end
end
