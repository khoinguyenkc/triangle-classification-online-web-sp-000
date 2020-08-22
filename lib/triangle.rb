class Triangle
  # write code here
  def initialize(one, two, three)
    @one = one,
    @two = two,
    @three = three
  end

  def kind
    type = ""
    
    if (@one + @two <= @three) || (@one + @three <= @two) || (@two + @three <= @one)
      raise TriangleError
      return
    elsif (@one <= 0) || (@two <= 0) || (@three <= 0)  
      raise TriangleError
      return
    elsif (@one == @two ) && (@two == @three )
      type = "equilateral"
    elsif (@one != @two ) &&(@two == @three) #exactly 2 3 same
      type = "isoceles"
    elsif (@one != @two ) &&(@one == @three) #eactly 1 3 same
      type = "isoceles"
    elsif (@three != @two ) && (@one == @two) #eactly 1 2 same
      type = "isoceles"
    elsif (@one != @two) && (@two != @three) && (@one != @three) #all 3 sides dif but length valid
      type = "scalene"
    end

    return type
  end

  

  class TriangleError < StandardError
    
  end

end
