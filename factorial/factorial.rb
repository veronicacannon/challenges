# Create a function that takes an integer and returns the factorial of that integer.
def factorial(int)
  (1..int).reduce(:*)
end
