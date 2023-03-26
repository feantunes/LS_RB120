class GoodDog
  
  attr_accessor :name, :age
  
  def initialize(n, a)
    @name = n
    @age = a
  end

  def public_disclosure
    "#{self.name} is #{dog_years}"
  end
  
  protected
  
  def dog_years
    age * 7
  end
end


class Doggie < GoodDog
  def initialize(n, a)
    @name = n
    @age = a 
  end  
  
  def doggs_years
    dog_years * 100
  end
    
  
end
  

  

sparky = GoodDog.new("Sparky", 7)
p sparky
# sparky.dog_years #we cannot call here because this method is private to the class, can be used only within the class.
p sparky.public_disclosure #see, this one works because this method is public, even though it used a private method in its definition!
rex = Doggie.new("rex", 5)
p Doggie.superclass.superclass

