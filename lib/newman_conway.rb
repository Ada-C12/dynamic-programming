# Time complexity: O(n)
# Space Complexity: O(n)

def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2
  
  s = [0, 1, 1]
  result = "1 1"

  for i in 3..num
    s[i] = s[s[i - 1]] + s[i - s[i - 1]]
    result << " #{s[i]}"
  end

  return result
end
