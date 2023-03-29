class Person
  attr_accessor :last_name, :first_name

  def initialize(name)
    @first_name = name
    @last_name = ''
  end
  
  def name
    self.first_name + ' ' + self.last_name
  end

end



# Given the below usage of the Person class, code the class definition.

bob = Person.new('bob')
p bob.name                  # => 'bob'
# bob.name = 'Robert'
p bob.name                  # => 'Robert'

# Modify the class definition from above to facilitate the following methods. Note that there is no name= setter method now.

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
p bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'