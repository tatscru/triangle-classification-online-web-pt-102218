class Triangle 
  
  attr_accessor :side_one, :side_two, 
  :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  
  def kind 
    true_triangle
    if side_one == side_two && side_two = side_three 
      :equilateral
    elsif side_one == side_two || side_two == side_three || side_one == side_three 
      :isosceles 
    else 
      :scalene 
    end 
  end 
    
  def true_triangle
    real_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each { |s| true_triangle << false if s <= 0 }
      raise TriangleError if true_triangle.include?(false)
  end
end
  
  class TriangleError < StandardError 
  end 

# class Triangle
#   attr_reader :a, :b, :c

#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     validate_triangle
#     if a == b && b == c
#       :equilateral
#     elsif a == b || b == c || a == c
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def validate_triangle
#     real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#     [a, b, c].each { |s| real_triangle << false if s <= 0 }
#     raise TriangleError if real_triangle.include?(false)
#   end
# end

# class TriangleError < StandardError
# end