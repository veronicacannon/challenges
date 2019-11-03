require 'minitest/autorun'
require 'minitest/pride'

require_relative 'cipher'

# main test class
class SecureMessagesTest < Minitest::Test
  def test_simple_decode
    u = 'I should have known that you would have a perfect answer for me!!!'
    v = ['ijJ tipvme ibw', 'f lopxo uibu z', 'pv xpvme ibwf ', 'b qfsgfdu botx', 'fs gps nf!!!']
    assert_equal(u, decode(v))
  end

  def test_simple_encode
    u = 'I should have known that you would have a perfect answer for me!!!'
    v = ['ijJ tipvme ibw', 'f lopxo uibu z', 'pv xpvme ibwf ', 'b qfsgfdu botx', 'fs gps nf!!!']
    assert_equal(v, encode_str(u, 1))
  end
end
