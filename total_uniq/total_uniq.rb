# Given two strings, create a function that returns the total number of unique 
# characters from the combined string.
# Each word will contain at least one letter.
# All words will be lower cased.
def count_unique(s1, s2)
  (s1 + s2).chars.uniq.count
end
