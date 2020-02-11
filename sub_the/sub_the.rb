# frozen_string_literal: true

# replace "the" with "a" or
# "an" before a vowel
# edge causes like 'an hour' excluded

def replace_the(str)
  arr = str.split(' ')
  arr.map.with_index do |word, index|
    if word == 'the' && %w[a e i o u].include?(arr[index + 1][0])
      'an'
    elsif word == 'the'
      'a'
    else
      word
    end
  end.join(' ')
end
