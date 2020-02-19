def strange_pair?(str1, str2)
  str1[0] == str2[-1] && str1[-1] == str2[0]
end
