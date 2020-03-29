

# Time complexity: o(n)
# Space Complexity: o(n)
def newman_conway(num)
  # raise NotImplementedError, "newman_conway isn't implemented"
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2

  newman_conway = [0, 1, 1]
  sequence = "1 1"

  i = 3

  while i <= num 
    #p(i) = p(p(i-1)) + p(i - p(i - 1))
    newman_conway[i] = newman_conway[newman_conway[i - 1]] + newman_conway [i - newman_conway[i - 1]]
    sequence += " #{newman_conway[i]}"
    i += 1
  end
    return sequence
end