class Student
  def initialize
    @grade = 'C'
    @points = 0
  end

  def study
    @points += 1 unless @points == 2
  end

  def grade
    if @points == 1
      @grade = 'B'
    elsif @points >= 2
      @grade = 'A'
    elsif @points == 0
      @grade = 'C'
    elsif @points == -1
      @grade = 'D'
    elsif @points <= -2
      @grade = 'F'
    end
  end

  def slack_off
    @points -= 1 unless @points == -2
  end
end
