

# Time complexity: O(n)
# Space Complexity: O(1)
def newman_conway(num)
  raise ArgumentError, "num must be >= 0" if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  array = Array.new(num + 1){}
  
  # Build a memo of subproblems

  array[1] = 1
  array[2] = 1

  i = 3

  while i < array.length

    if i > 2
      array[i] = array[array[i - 1]] + array[i - array[i - 1]]
    end
    
    i += 1
  end

  array.shift()
  return array.join(" ")
end
