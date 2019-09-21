# define person with methods for greet and name
# joe = Person.new('Joe')
# joe.greet('Kate') # should return 'Hello Kate, my name is Joe'
# joe.name          # should == 'Joe'

# person class definition
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet(new_friend)
    "Hello #{new_friend}, my name is #{name}"
  end
end
