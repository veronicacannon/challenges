# Create a function that returns true if the first array can be nested inside the second.

# arr1 can be nested inside arr2 if:

#     arr1's min is greater than arr2's min.
#     arr1's max is less than arr2's max.

# Note: with strict inequality
def can_nest(arr1, arr2)
  arr1.min > arr2.min && arr1.max < arr2.max
end
