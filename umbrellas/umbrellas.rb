# how many umbrellas required to travel dry
def min_umbrellas(weather)
  home = 0
  work = 0
  weather.each_with_index do |x, i|
    if %w[rainy thunderstorms].include? x
      if i.even?
        home += 1 if home.zero?
        home -= 1
        work += 1
      else
        work += 1 if work.zero?
        home += 1
        work -= 1
      end
    end
  end
  home + work
end
