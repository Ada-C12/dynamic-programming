

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num < 1
  
  return num.to_s if num == 1

  answer = []

  one_previous = 1
  two_previous = 1
  n = 2
  
  while n < num
    temp = one_previous + two_previous
    answer << temp
    two_previous = one_previous
    one_previous = temp
    n += 1
  end

  return answer.join(" ")


end