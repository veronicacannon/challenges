def triangle?(a, b, c)
  return false if a + b <= c
  return false if a + c <= b
  return false if b + c <= a
  true
end
