# No oddities here codewars.com
# Write a small function that returns the values of an array that are not odd.
# All values in the array will be integers.
# Return the good values in the order they are given.

def no_odds(ary)
  ary.reject(&:odd?)
end
