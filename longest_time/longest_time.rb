# frozen_string_literal: true

# Create a function that takes three values (hours, minutes, seconds)
# and returns the longest duration

def longest_time(h, m, s)
	normalized_time = [h * 60 * 60, m * 60, s]
    [h, m, s][normalized_time.index(normalized_time.max)]
end
  