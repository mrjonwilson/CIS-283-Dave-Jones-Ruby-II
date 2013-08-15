# Inventory Class
# { 123 => ["shirt", 19.99]}

class Item
  def initialize( description, price )
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []
  end

  def add_size( size )
    @size << size
  end

  def remove_size( size )
    @size.delete( size )
  end

  def to_s
    return "#{@id}\t#{@description}\t#{@price} sizes: " +
        @size.join(", ")
  end
end

shirt = Item.new( "shirt", 19.99 )
shirt.add_size( "Large" )
shirt.add_size( "Small" )
puts shirt
shirt.remove_size( "Large" )
puts shirt

pants = Item.new( "pants", 19.99 )
pants.add_size( "Large" )

puts pants