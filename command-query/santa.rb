class Santa
  def initialize
    @fit = true
    @cookie_count = 0
  end

  def fits?
    @fit
  end

  def eats_cookies
    @cookie_count += 1
    if @cookie_count > 2
      @fit = false
    end
  end
end
