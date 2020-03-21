# Time complexity: O(n) n is the size of num
# Space Complexity: O(n)
def newman_conway(num)
  if num == 0
    raise ArgumentError 
  elsif num == 1
    return "1"
  elsif num == 2
    return "1 1"
  end
  
  # Creates an array with all nil as values
  new_array = Array.new(num)
  # Sets values from index 0 to 2
  new_array[0] = nil
  new_array[1] = 1
  new_array[2] = 1
  
  result = "1 1"
  
  index = 3
  
  while index <= num
    new_array[index] = new_array[new_array[index - 1]] + new_array[index - new_array[index - 1]]
    result << " #{new_array[index]}"
    index += 1
  end
  
  return result  
end