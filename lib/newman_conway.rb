

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num == 0 
  results = []

  i = 1
  while i <= num
    if i < 3
      results[i] = 1
    else 
      results[i] = results[results[i - 1]] + results[i - results[i - 1]]
    end 
    i += 1 
  end 

  return results.join(" ").lstrip.encode("UTF-8", "US-ASCII")
end