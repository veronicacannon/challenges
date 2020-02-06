# Write a function that takes an array of elements
# and returns an array of only the integers.
def return_only_integer(arr)
  arr.select { |element| element.is_a? Integer }
end
