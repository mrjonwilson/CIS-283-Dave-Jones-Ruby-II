# Simulating a coffee machine

# MrCoffee Class

class MrCoffee
  @@max_water_level = 32.0 # ounces
  @@max_coffee_level = 4.0 #ounces
  @@standard_cup = 8.0 #ounces - amount of water used to brew coffee
  attr_reader :power, :water_level, :coffee_level

  def initialize()
    @power = false                  # boolean
    @water_level = 0.0              # float - ounces
    @clock = 0                      # time
    @coffee_level = 0.0             # float - ounces  (dry)
    @brewed_coffee_level = 0.0      # float - ounces (finished coffee)
    @filter = false                 # boolean
    @brewing_time = 0               # time
    @element_temp = 0.0             # float (degrees C)
    @brewing = false                # boolean
  end

  def turn_on
    @power = true
  end
  def turn_off
    @power = false
  end

  def add_filter
    @filter = true
  end

  def remove_filter
    @filter = false
  end

  def add_water( ounces )
    @water_level += ounces
    if( @water_level > @@max_water_level )
      @water_level = @@max_water_level
    end
  end

  def remove_water( ounces )
    @water_level -= ounces
    if( @water_level < 0.0 )
      @water_level = 0 # pegging at 0
    end
  end

  def add_coffee( ounces )   #TODO: make sure there is a filter first
    @coffee_level += ounces
    if( @coffee_level > @@max_coffee_level )
      @coffee_level = @@max_coffee_level
    end
  end

  def brew
    if( @power && @water_level > 0.0 && @filter && @coffee_level > 0.0 )
      @brewing = true
      self.remove_water( @@standard_cup )
      @coffee_level -= 2.0 #ounces #TODO: peg this variable to zero
      self.remove_filter
      @brewed_coffee_level += 8.0 #TODO: peg
      @brewing = false
      return "Your coffee is ready."
    else
      return "Can't Brew right now - missing stuff:\nWater Level: #{@water_level}\nCoffee Level: #{@coffee_level}\nFilter: #{@filter}\nPower: #{@power} "
    end
  end
end

my_coffee = MrCoffee.new( )

puts my_coffee.inspect
my_coffee.turn_on
puts my_coffee.power
my_coffee.turn_off
puts my_coffee.power

my_coffee.add_water( 20 )
puts my_coffee.inspect

my_coffee.add_water( 10 )
puts my_coffee.inspect
puts my_coffee.water_level

my_coffee.add_water( 10.9 )
puts my_coffee.inspect

my_coffee.add_coffee( 16 )
puts my_coffee.inspect

puts my_coffee.brew
my_coffee.turn_on
my_coffee.add_filter

puts my_coffee.brew
