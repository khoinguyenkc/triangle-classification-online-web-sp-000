class Triangle
  # write code here
  def initialize(one, two, three)
    @one = one,
    @two = two,
    @three = three
  end

  def kind
    valid = true
    type = ""


    if (@one + @two < @three) || (@one + @three < @two) || (@two + @three < @one)
      raise TriangleError
      return
    elsif (@one == @two ) && (@two == @three )
      type = "equilateral"
    elsif (@one != @two ) &&(@two == @three)
    elsif 
    elsif condition
      
      
      
    end


    if valid 
      return type
        end
      
  end

  class TriangleError < StandardError
    def 
  end 
  
end
