# Inventory Class
# { 123 => ["shirt", 19.99]}

class Item
  attr_accessor :description, :price
  attr_reader :id
  @@last_id = 0
  @@use_ids = []

  def initialize( description, price )
    @@store = "Jon's Store"
    #@id = @@last_id + 1
    #@@last_id += 1

    @id = rand(100..999)
    while @@use_ids.include?( @id )
      @id = rand(100..999)
    end
    @@use_ids << @id

    @description = description
    @price = price
    @sizes = []
  end

  def use_ids
    return @@use_ids.join(", ")
  end

  def store=( store )
    @@store = store
  end

  def store
    return @@store
  end

  def add_size( size )
    @sizes << size
  end

  def remove_size( size )
    @sizes.delete( size )
  end

  def sizes
    return @sizes
  end

  def to_s
    return "#{@id}\t#{@description}\t#{@price} sizes: " +
        @sizes.join(", ")
  end
end

shirt = Item.new( "shirt", 19.99 )
shirt.add_size( "Large" )
shirt.add_size( "Small" )
puts shirt
#shirt.remove_size( "Large" )
#puts shirt

pants = Item.new( "pants", 19.99 )
pants.add_size( "Large" )

puts pants

puts shirt.description
puts shirt.price

# Change values
shirt.description = "Hawaiian Shirt"
shirt.price = 69.99

puts shirt

puts shirt.sizes.inspect   # return an array

shirt.sizes.each do | size |
  puts size
end

puts shirt.store
puts pants.store

shirt.store = "Joe's Store"

puts shirt.store
puts pants.store
puts shirt.use_ids

socks = Item.new( "socks", 4.99 )
socks.add_size( "Small" )
puts socks
puts shirt.use_ids
