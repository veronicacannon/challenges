# Take two parameters of beginning and ending of range (inclusive),
#  and return sum of all even numbers in range.

def sum_even_nums_in_range(start, stop)
  (start..stop).select(&:even?).sum
end
