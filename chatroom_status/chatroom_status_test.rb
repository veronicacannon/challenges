require 'minitest/autorun'
require 'minitest/pride'

require_relative 'chatroom_status'

# test class
class ChatroomStatusTest < Minitest::Test
  def test_empty_room
    assert_equal('no one online', chatroom_status([]))
  end

  def test_one_chatter
    assert_equal('parIE_to online', chatroom_status(['parIE_to']))
  end

  def test_two_chatters
    assert_equal('s234f and mailbox2 online',
                 chatroom_status(%w[s234f mailbox2]))
  end

  def test_many_chatters
    assert_equal('pap_ier44, townieBOY and 4 more online',
                 chatroom_status(%w[pap_ier44 townieBOY panda321 motor_bike5 sandwichmaker833 violinist91]))
  end
end
