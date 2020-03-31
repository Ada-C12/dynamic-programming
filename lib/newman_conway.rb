

# Time complexity: O(n)
## As the number goes to infinity, its values have to be assessed relative to whatever's already in the array, but because it's based on an array, the look-up cost is very low given that an index value is being passed in. 
# Space Complexity: O(n)
## As the number goes to infinity, the amount of space will grow at the same rate

def newman_conway(num)
  
  if num == 0 || num == nil
    raise ArgumentError
  elsif num == 1
    return "1"
  elsif num == 2
    return "1 1"
  end
  
  if num >= 3
    return_array = [1, 1]
  end
  
  i = 3
  
  until i > num do
    
    # P(n) = P(P(n - 1)) + P(n - P(n - 1))
    
    temp_a = return_array[(return_array[i-2])-1]
    
    temp_b = return_array[(i-(return_array[i-2]))-1]
    
    temp = temp_a + temp_b
    
    i += 1
    
    return_array.push temp
  end
  
  return_string = return_array.join(" ")
  
  return return_string
  
end