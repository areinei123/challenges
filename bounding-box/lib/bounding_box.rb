class BoundingBox
  attr_reader :left, :right, :top, :bottom

  def initialize (left, bottom, right, top)
    @left = left
    @right = right
    @top = top
    @bottom = bottom
  end

  def right
    @right = @right + @left
    @right
  end

  def top
    @top = @top + @bottom
  end

  def width
    @right
  end

  def height
    @top
  end

  def contains_point?(x,y)
    if left <= x && right >= x && bottom <= y && top >= y
      return true
    else
      return false
    end
  end
end
