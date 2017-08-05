class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32 ? true : false
  end

  def old?
    @age > 80 ? true : false
  end

  def has_ring?
    true if name == 'Frodo'
  end

  def is_short?
    true
  end
end
