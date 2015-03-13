require 'pry'
class BoundingArea
  attr_reader

  def initialize (rekt)
    @rekt = rekt
    # binding.pry
  end

  def contains_point?(x,y)
    if !@rekt.empty?
      @rekt.each do |box|
        unless box.right >= x && box.left <= x && box.top >= y && box.bottom <= y
          return false
        else
          return true
        end
      end
    else
      return false
    end
  end

  def rekt_em?
    "Damn near killed em"
  end
end
