

# Time complexity: O(n)
# Space Complexity: O(n) - creates an array & string that will
# have a length equal to size of num
def newman_conway(num)
  sequence = [0, 1, 1]

  if num == 0 
    raise ArgumentError.new("Input cannot be 0") 
  elsif num < 3
    return sequence[1..num].join(" ") 
  end

  i = 3
  while i <= num 
    sequence[i] = sequence[sequence[i - 1]] + 
      sequence[i - sequence[i - 1]]
    i += 1
  end

  return sequence[1..-1].join(" ")
end
