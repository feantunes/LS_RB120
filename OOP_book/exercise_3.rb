class Student

  attr_accessor :name
  
  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?(other)
    grade > other.grade #we need to use protected! private does not allow the use on other.grade! because it's calling grade on another object.
  end

  
  protected
  
  def grade
    @grade
  end
  
end

joe = Student.new("Joe", 50)
bob = Student.new("Bob", 311)

puts "Well done!" if joe.better_grade_than?(bob)
p joe
