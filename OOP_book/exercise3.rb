class MyCar
  attr_accessor :color
  attr_reader :year
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = true
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


monza = MyCar.new("1996", "Silver", "Monza")
p monza.color
p monza
p monza.color= "Grey"
p monza
p monza.year
p monza.spray_paint
p monza