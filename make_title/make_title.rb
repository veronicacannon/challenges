# frozen_string_literal: true

# Take a string as an argument and convert the first character
# of each word to uppercase

def make_title(str)
  str.split(' ').map(&:capitalize).join(' ')
end
