class Sparkly
  def initialize(text)
    @text = text
  end

  def to_s
    if @text.include?(" *.*:*.*")
      @text
    else
      @text += sparkles
    end
  end

  private

  def sparkles
    " *.*:*.*"
  end
end
