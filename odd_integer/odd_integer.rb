# Take an array and find the integer which appears an
# odd number of times. There will always only be one
# integer that appears an odd number of times.

def find_odd(arr)
  arr.find { |i| arr.count(i).odd? }
end
