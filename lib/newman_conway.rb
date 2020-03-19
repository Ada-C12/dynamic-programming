# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0
  
  result = [1, 1]
  
  return "1" if num == 1
  return result.join(" ") if num ==2
  
  # building up the array, starting with n=3
  # FORMULA: P(n) = P(P(n - 1)) + P(n - P(n - 1)) 
  #          P(n) = part1       + part2 
  #          P(n) = P(prev)     + P(n - prev) 
  # P(P(prev - 1)) + P(prev - P(prev - 1))
  
  n = 3
  while n <= num
    # prev is the same as the P(n-1) from the formula
    prev = result[-1]
    
    # part1 is P(P(n-1)) from before the plus sign in the formula
    part1 = getP(prev, result) 
    # part2 is the P(n - P(n - 1)) from after the plus sign in the formula
    part2 = getP(n-prev, result)
    
    newValue = part1 + part2
    
    result[n-1] = newValue
    n += 1
  end
  
  return result.join(" ")
  
end

def getP(p, result)
  return result[p-1]
end