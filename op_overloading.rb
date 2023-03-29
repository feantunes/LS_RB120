class Box
  
  attr_accessor :width, :height
  
   def initialize(w,h)     # Initialize the width and height
      @width,@height = w, h
   end

   def +(other)       # Define + to do vector addition
      Box.new(@width + other.width, @height + other.height)
   end

   def -@           # Define unary minus to negate width and height
      Box.new(-@width, -@height)
   end

   def *(scalar)           # To perform scalar multiplication
      Box.new(@width*scalar, @height*scalar)
   end
end

my_box = Box.new(10,20)
my_box2 = Box.new(30,20)
p my_box2
p my_box + my_box2
p my_box.-@

