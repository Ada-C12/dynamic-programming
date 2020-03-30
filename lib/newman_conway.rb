

# Time complexity: O(n) where n is num
# Space Complexity: O(n) where n is num
def newman_conway(num)
  
  if num == 0
    raise ArgumentError.new("You cannot enter 0")
  elsif num == 1
    return "1"
  end
  
  result = [1, 1]
  
  n = 3
  
  until result.length >= num
    inner_first_num = result[-1]
    first_num = result[(inner_first_num - 1)]
    
    
    inner_second_num = n - inner_first_num
    second_num = result[(inner_second_num - 1)]
    new_addition = first_num + second_num
    result << new_addition
    n += 1
  end
  
  return result.join(" ")
end
