

# Time complexity: O(n); processes scale based upon num input
# Space Complexity: O(n); space needs are in proportion to num input.
def newman_conway(num)
  sequence = [0, 1, 1]
  result = "1 1"
  count = 3
  
  if num < 1  
    raise ArgumentError, "Input must be greater than 0."
  elsif num == 1
    return "#{sequence[1]}"
  elsif num == 2
    return result
  end
  
  while count <= num
    new = sequence[sequence[count - 1]] + sequence[count - sequence[ count - 1]]
    
    sequence << new
    result += " #{new}"
    count += 1
  end
  
  return result
end
