# Add a class method to your MyCar class that calculates the gas mileage of any car.

module Gangster
  def lowrider
    "Yeah I'm low"
  end
end

class Cars
  def self.info
    "I'm from superclass cars"
  end
 # include Gangster #a module mixin on a superclass is also available down the chain!
end


class MyCar < Cars
  attr_accessor :color
  attr_reader :year, :model
  

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = true
  end
  
  def self.mileage(km, l)
    @@mileage = km/l
  end
  
  def lowrider
    super + " and fast!" #we can use super to have access to the module method on the lookup path!
  end
  
  def current_speed
    "Car is now at #{@speed} km/h"
  end
  
  include Gangster #this is a test to sww how the .ancestors changed!
  
  def speed_up
    @speed += 10
    current_speed
  end
  
  def brake
    @speed = 0
    current_speed
  end
  
  def spray_paint
    puts "Please choose a nice new color"
    self.color = gets.chomp
  end
  
  def shut_off
    @running = false
    "Car is now shut off"
  end
  
  def to_s
    "My car is a #{model}, year of #{year}, on a beautiful #{color} color!"
  end
  
end


monza = MyCar.new("1996", "Silver", "Monza")
p monza.color
p monza
p monza.color = "Grey"
p monza
p monza.year
p monza
p MyCar.mileage(300, 10)
puts monza
p monza.lowrider
p MyCar.ancestors
  
