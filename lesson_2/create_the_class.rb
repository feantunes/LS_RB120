# Create an empty class named Cat.

module Walkable
  def walk
    puts "Let's go for a walk!"
  end

end 

class Cat
  include Walkable
  
  COLOR = "purple"
  @@cats = 0
  
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@cats += 1
  end
  
  def self.total
    @@cats
  end
  
  def rename(name)
    self.name = name
  end
  
  def greet
    puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
  end
    
    
  def personal_greeting
    puts "Hello! My name is #{name}!"
  end
  
  def identify
    self
  end
  
  def to_s
    "I'm #{name}!"
  end
  
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = "Luna"
kitty.greet
kitty.walk
Cat.generic_greeting
kitty.rename('Chloe')
puts kitty.name
kitty.greet
p kitty.identify
p Cat.total
puts kitty