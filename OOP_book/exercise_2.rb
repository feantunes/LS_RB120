module Towable
  def can_tow?(pounds)
    pounds < 8000
  end
end

class Vehicle
  attr_accessor :color, :year, :model
  
  @@number_of_vehicles = 0
  
  def self.number_of_vehicles
    "I have #{@@number_of_vehicles} vehicles."
  end
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = true
    @@number_of_vehicles += 1
  end

 def current_speed
    "Now at #{@speed} km/h"
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
    self.color = gets.chomp
    "New paint jobs looks nice with #{color}"
  end

  def shut_off
    @running = false
    "Now shut off"
  end
  
  def age
    "My #{model} is #{current_age} years old"
  end 
  
  private
  
  def current_age
    Time.now.year - self.year
  end
end


class MyCar < Vehicle 
  NUMBER_OF_DOORS = 4
  
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
  
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  
  include Towable
  
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

monza = MyCar.new(1996, "Silver", "Monza")
f150 = MyTruck.new(2023,"Grey", "F150 Lightning")
puts monza
p Vehicle.number_of_vehicles
p f150.can_tow? 1500

p MyCar.ancestors
p MyTruck.ancestors
p Vehicle.ancestors

p monza.age
p f150.age