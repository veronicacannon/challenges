# frozen_string_literal: true

# return the unique element in array

def unique(arr)
  arr.detect { |element| arr.count(element) == 1 }
end
