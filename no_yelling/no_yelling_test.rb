require 'minitest/autorun'
require 'minitest/pride'

require_relative 'no_yelling'

# main test class
class NoYellingTest < Minitest::Test
  def test_question_marks
    assert_equal(no_yelling('What went wrong?????????'), 'What went wrong?')
  end

  def test_exclaimation_marks
    assert_equal(no_yelling('Oh my goodness!!!'), 'Oh my goodness!')
  end

  def test_punctunation_everywhere
    assert_equal(no_yelling('I just!!! can!!! not!!! believe!!! it!!!'), 'I just!!! can!!! not!!! believe!!! it!')
  end

  def test_only_one
    assert_equal(no_yelling('Oh my goodness!'), 'Oh my goodness!')
  end

  def test_no_yelling
    assert_equal(no_yelling('I just cannot believe it.'), 'I just cannot believe it.')
  end
end