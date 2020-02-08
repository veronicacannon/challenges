# frozen_string_literal: true

def reverse(str)
  str.split(' ').map do |word|
    word.length > 4 ? word.reverse : word
  end.join(' ')
end
