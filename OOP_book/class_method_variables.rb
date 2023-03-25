class GoodDog
  DOG_YEARS = 0 
  
  @@number_of_dogs = 0 #we initiate a class variable here.
  
  def initialize
    @@number_of_dogs += 1 #everytime we instantiate an object, this class variable will add up. This is the constructor.
  end
  
  def self.total_number_of_dogs #this is a class method because of .self. It returns the class variable. 
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs #we can call the class method directly on the class. Now it's 0.

dog1 = GoodDog.new #creating this object will add up the class variable to 1
dog2 = GoodDog.new #creating this object will add up the class variable again, to 2.

puts GoodDog.total_number_of_dogs #it will return 2.

