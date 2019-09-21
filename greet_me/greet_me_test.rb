require 'minitest/autorun'
require 'minitest/pride'

require_relative 'greet_me'

# main test class
class GreetMeTest < Minitest::Test
  def setup
    @jill = Person.new('Jill')
    @jack = Person.new('Jack')
  end

  def test_jack_greet_jill
    assert_equal(@jack.greet('Jill'), 'Hello Jill, my name is Jack')
  end

  def test_jack_greet_mary
    assert_equal(@jack.greet('Mary'), 'Hello Mary, my name is Jack')
  end

  def test_jill_greet_jack
    assert_equal(@jill.greet('Jack'), 'Hello Jack, my name is Jill')
  end

  def test_jill_name
    assert_equal(@jill.name, 'Jill', "Person's name could not be retrieved")
  end
end
