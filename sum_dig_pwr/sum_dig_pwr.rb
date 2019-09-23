# Write a function that collects numbers in a range where the sum of the digits
# squared equals the number.
# Example: 135 = 1^1 + 3^2 + 5^3
def eureka?(number)
  digit_power_sum = 0
  number.digits.reverse_each.with_index(1) do |d, i|
    digit_power_sum += d**i
  end
  digit_power_sum == number
end

def sum_dig_pwr(range_start, range_end)
  (range_start..range_end).select { |n| eureka?(n) }
end
