# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'which_case'

# test class
class WhichCaseTest < Minitest::Test
  def test_all_upper
    assert_equal('upper', get_case("NO YOU'RE YELLING"))
  end

  def test_all_lower
    assert_equal('lower', get_case('tell me a secret'))
  end

  def test_mixed
    assert_equal('mixed', get_case('whisper to A SCREAM'))
  end
end
