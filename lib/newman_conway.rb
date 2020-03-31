

# Time complexity: O(1)
# Space Complexity: O(n)

def newman_helper(num, newman_hash)
  if newman_hash[num]
    return newman_hash[num]
  end
  
  if num == 1 || num == 2
    return 1 
  else
    newman_hash[num] = newman_helper(newman_helper(num - 1, newman_hash), newman_hash) + 
    newman_helper(num - newman_helper(num - 1, newman_hash), newman_hash)
    return newman_hash[num]
  end
end

def newman_conway(num)
  newman_hash = {}
  
  if num < 1
    raise ArgumentError
  end
  newman_array = []
  
  num.times do |i|
    newman_array << newman_helper(i + 1, newman_hash)
  end
  
  return newman_array.join(" ")
end