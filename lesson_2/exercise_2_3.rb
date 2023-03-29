class Person
  
  attr_accessor :full_name, :first_name, :last_name
  
  def initialize(full_name)
    @full_name = full_name
    @first_name = full_name.split[0]
    full_name.split[1].nil? ?  @last_name = '' : @last_name = full_name.split[1]
  end
  
  def name=(names)
    self.first_name = names.split[0]
    names.split.size > 1 ? self.last_name = names.split[1] : self.last_name = ''
  end
  
  
  def name
    last_name == '' ? self.first_name : self.first_name + ' ' + self.last_name
  end
end

# Now create a smart name= method that can take just a first name or a full name, 
# and knows how to set the first_name and last_name appropriately.

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'