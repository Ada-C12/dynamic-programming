# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  
  seq = [0, 1, 1]
  i = 3
  result = "1 1"
  
  until i >= num + 1
    current = seq[seq[i-1]] + seq[i - (seq[i-1])]
    seq << current
    result += " #{current}"
    i += 1
  end
  
  return result
end 


#pp newman_conway(13)
