# Simulating a coffee machine

# MrCoffee Class

class MrCoffee
  @@max_water_level = 32.0 # ounces
  attr_reader :power

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
end

my_coffee = MrCoffee.new( )

puts my_coffee.inspect
my_coffee.turn_on
puts my_coffee.power
my_coffee.turn_off
puts my_coffee.power