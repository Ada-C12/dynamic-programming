

# Time complexity: O(n)
# Space Complexity: O(n) because I have an array that is being returned as a string. Array and String both have O(n) space complexity
def newman_conway(num)
  raise ArgumentError if num < 1
  
  sequence = [1, 1]
  return sequence[1].to_s if num == 1
  return sequence.join(" ") if num == 2

  # Not sure why it has to start as [0,1,1]? But it works, so.....yeah.
  array = [0, 1, 1]
  n = 3
  
  while n <= num
    sequence << array[n] = array[array[n - 1]] + array[n - array[n-1]]
    n += 1
  end

  return sequence.join(" ")


end