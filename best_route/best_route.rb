# frozen_string_literal: true

# As a traveler, I'd like to visit a number towns while only driving
# a set number of miles, so that I don't fall asleep at the wheel.

# Scope
# - number of towns will vary (k)
# - number of miles will very (t)
# - list of towns and miles between will be provided (ls)

# Acceptance Criteria
# - return the number of miles to visit three towns
# - number of miles must be less then set number
# - first part has a prefix to get the rotate
# - return nil if conditions cannot be met

def choose_best_sum(miles, towns, list)
  list.combination(towns)
      .map { |path| path.inject(:+) }
      .select { |sum| sum <= miles }
      .max
end
