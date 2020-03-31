# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  return nc_helper(num)
end

def nc_helper(num, count = 2, memo = [0, 1, 1], result = "1 1")
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2
  
  if count == num
    return result
  end
  
  value = memo[memo[count]] + memo[count + 1 - memo[count]]
  memo << value
  result << " #{value}"
  
  return nc_helper(num, count + 1, memo, result)
end

# p newman_conway(12)