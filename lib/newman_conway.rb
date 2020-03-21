

# Time complexity: O(log n)
# Space Complexity: O(n)
def newman_conway(num)
  if num <= 0
    raise ArgumentError
  end
  
  memo = Array.new(num)
  memo[0] = 0
  memo[1] = 1
  memo[2] = 1
  
  result = "1"
  
  count = 3
  while count <= num
    memo[count] = memo[memo[count - 1]] + memo[count - memo[count - 1]]
    count += 1
  end
  
  (2..num).each do |i|
    result += " #{memo[i]}"
  end
  
  return result
end
