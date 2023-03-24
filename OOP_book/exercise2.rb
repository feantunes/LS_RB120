#How to create a Class and a instance method and instance variable. #New is the class method. #Initialize is the instance method. 

class GoodDog
  def initialize(name) #this is a constructor method! 
    @name = name 
  end
  
  def speak #this is an instance method! 
    "#{@name} says Arf!"  #we can have access to the instance variable within the instance method! 
  end
  
  def get_name #this is an accessor method! that's how we can retrive the name. it's a getter method!
    @name
  end
  
  def set_name=(name) #this is an accessor setter method!  see that set_name= is the method name. use the = and it's a setter. 
    @name = name
  end
  
end
#usually rubysts write these accessor methods with the same name as the variable they want to access. Therefore, it should be named 'name' as in @name. 
#Then, wehen we call it's only sparky.name to return name and sparky.name= "new name" to set a new name. 


sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

p sparky.speak #here the output is going to be the speak method called
p fido.get_name #here the output is going to be the get_name method called, the accessor method! A getter method!
p fido.set_name ="Toffy"
p fido.get_name

#now let's use a new way of getting access to setter and getter method, using the attr_accessor method!

class GoodDog1 
  attr_accessor :call
  
  def initialize(call)
    @call = call
  end
  
  def speak
    "#{@call} says Woof!"
  end

end

my_dog = GoodDog1.new "rec"
p my_dog
p my_dog.call= "Rex"