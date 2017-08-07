class Retirement
  def calculate(current, retirement_age)
    if current < 0
      "Error. Age cannot be negative."
    elsif retirement_age < 0
      "Error. Retirement ge cannot be negative."
    else
      still_have = retirement_age - current
      "You have #{still_have} years left until you can retire. It is 2015, so you can retire in #{2015 + still_have}."
    end
  end
end
