# frozen_string_literal: true

# Return "upper" if all the letters in a word are uppercase,
# "lower" if lowercase and "mixed" for any mix of the two.

def get_case(str)
  return 'upper' if str.upcase == str
  return 'lower' if str.downcase == str
  'mixed'
end
