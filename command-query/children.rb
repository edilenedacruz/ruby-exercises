require_relative 'child'
class Children
  def initialize
    @children = Array.new
  end

  def eldest
    @children.max_by { |child| child.age }
  end

  def << child
    @children.push(child)
  end
end
