

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError, "Argument must be an integer greater than zero." if num <= 0 

  if num == 1
    return "1"
  elsif num == 2
    return "1 1"
  else
    p_helper(num)
  end 
end

def p_helper(num)
  sequence = [1, 1]

  # when do we memo???? I guess we only need to keep track of previous_p and p_previous_p values

  # p(num) = p(p(num - 1)) + p(num - p(num - 1))

  # need to find p of all whole integers preceding num and add them to sequence
  # code below seems to work if I provide n and sequence for integers preceding n
  build = num - 2
  build.times do
    # if num is 4 previous_p is at index 2 (value: 2)
    previous_p = sequence[num - 2]
    # now we need to look up p of the previous_p value
    p_previous_p = sequence[previous_p - 1]
    # find p of number minus previous number's p, then add it to p_previous_p
    p = p_previous_p + sequence[(num - previous_p) - 1]
    sequence << p
  end

  return sequence
end