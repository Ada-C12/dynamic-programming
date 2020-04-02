

# Time complexity: O(n)
# Space Complexity: O(1)
def newman_conway(num)
  raise ArgumentError, "num must be >= 0" if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2

  # I made a new premade array that was the length plus one of num that was passed in
  array = Array.new(num + 1){}
  
  # Build a memo of subproblems

  # value at index 1 and 2 are set two zero, but why is value at index 0 nil? How did everyone initialize
  # their array?
  array[1] = 1
  array[2] = 1

  # initialize i to 3 because values at index 1 and 2 are already set.
  i = 3

  
  while i < array.length

    # I used the sum of previous values in the array to get the next value. So I initialized i to index  3 since that is the next 
    # value that needs to be calculated. As a result of plugging 3 into that equation, I got 2. So the value at index 3 is 2. And you'd just keep
    # doing that until you go past the length of the array. 
    if i > 2
      array[i] = array[array[i - 1]] + array[i - array[i - 1]]
    end
    
    i += 1
  end

  # used shift to pop off first value which was nil
  array.shift()
  
  # joined them so answer would come out as string instead of array to pass the test
  return array.join(" ")
end
