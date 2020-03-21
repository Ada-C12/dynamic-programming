

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError, "Argument must be an integer greater than zero." if num <= 0 

  if num == 1
    return "1"
  elsif num == 2
    return "1 1"
  else
    p_helper(num, [1, 1])
  end 
end

def p_helper(num, sequence)

  # need to find p of all whole integers preceding num and add them to sequence

  # BASE CASE: stop when count of numbers in sequence array is the same as `num`
  return sequence.join(" ") if num == sequence.length

  # REGRESSIVE CASE: 
  # forumula is p(num) = p(p(num - 1)) + p(num - p(num - 1))
  building_num = sequence.length + 1
  # if num is 4 previous_p is at index 2 (value: 2)
  previous_p = sequence[building_num - 2]
  # now we need to look up p of the previous_p value
  p_previous_p = sequence[previous_p - 1]
  # find p of number minus previous number's p, then add it to p_previous_p
  p = p_previous_p + sequence[(building_num - previous_p) - 1]
  sequence << p
  return p_helper(num, sequence)
end