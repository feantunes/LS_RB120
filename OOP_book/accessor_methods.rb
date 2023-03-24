class GoodDog
  attr_accessor :name #this will create @name, a setter method and a getter method! 
  
  def initialize(name)
    @name = name
  end

  def speak
    "#{name} doggie says woof!"
  end
  
  def change_name(n)
    self.name = n #we need to add self here because without it, ruby will understand name as a local variable!
  end
  
end

sparky = GoodDog.new("Sparky")
p sparky.speak
p sparky.change_name "Theobald"
p sparky
