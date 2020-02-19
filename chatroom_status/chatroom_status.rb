def chatroom_status(users)
  case users.count
  when 0
    'no one online'
  when 1
    users.first + ' online'
  when 2
    "#{users[0..1].join(' and ')} online"
  else
    "#{users[0..1].join(', ')} and #{users.size - 2} more online"
  end
end
