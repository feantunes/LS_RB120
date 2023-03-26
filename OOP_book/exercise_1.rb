class Vehicle
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = true
  end

end


class MyCar < Vehicle 
  attr_accessor :color
  attr_reader :year
  
  CHASSI = [@year, @speed, @color]
  
  def chassi
    CHASSI
  end

  
  def initialize(year, color, model)
   super
  end
  
  
  def current_speed
    "Car is now at #{@speed} km/h"
  end
  
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
  
end


p monza = MyCar.new("1996", "Silver", "Monza")
p monza.chassi
