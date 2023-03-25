class GoodDog
  DOG_YEARS = 7 #initialized a constant.
  
  attr_accessor :name, :age #calling the attr_accessor method to create the getter and setter methods.
  
  def initialize(n, a)
    self.name = n             #initialized to get the state of the object. self.name to call the setter method and not a local variable. 
    self.age = a * DOG_YEARS  #same as above.
  end
  
  def to_s #this to_s will override the built-in to_s method. When we call puts, which automatically calls to_s, it will print this!
    "This dog name is #{name} and it is #{age} in dog years/"
  end
  
  def what_is_self
    self # as it turnes out, self references the object on which is called like self.name equal to sparky.name if called on sparky.
  end
  
  def self.this_is_a_class_method
    self #this will return the class name!
  end
  
  def GoodDog.a_method
    "Also a class method"
  end
  
end

sparky = GoodDog.new("Sparky", 7)
p sparky
puts sparky
p "#{sparky}" #string interpolation also calls to_s automatically, so it will also print the custom code for to_s.
p sparky.what_is_self
p GoodDog.this_is_a_class_method #as you can see, this will return the class name as self. 
p GoodDog.a_method
