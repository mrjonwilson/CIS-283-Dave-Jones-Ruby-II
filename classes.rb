=begin
# Square
# 4 sides
#   same length
#   90 degree angles (4)

int side_length

def squares
  # length of a side
end
=end

class Square

  def initialize( side_length )
    @side_length = side_length
  end

  def side_length
    return @side_length
  end

  def side_length=(side_length)
    @side_length = side_length
  end

  def perimeter
    return @side_length * 4

  end

  def area
    return @side_length * @side_length
  end

  def to_s
    "This Square has a side length of #{@side_length} and an area of #{self.area}."
  end
end

my_square = Square.new( 10 )
your_square = Square.new( 20 )

puts my_square.side_length = 5
puts your_square.side_length

puts "Perimeters"
puts my_square.perimeter
puts your_square.perimeter

puts "Areas"
puts my_square.area
puts your_square.area
puts my_square
puts your_square

#puts "My Square has a side length of #{my_square.side_length} and an area of #{my_square.area}."
#puts "Your Square has a side length of #{your_square.side_length} and an area of #{your_square.area}."
