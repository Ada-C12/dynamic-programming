

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  if num == 0
    throw ArgumentError, "0 is not valid"
  end
  
  seq = []
  
  seq[1] = 1
  seq[2] = 1
  
  if num == 1 || num == 2
    return seq[1..num].join(' ')
  end
  
  n = 3
  while n <= num
    seq[n] = seq[seq[n - 1]] + seq[n- seq[n-1]]
    n += 1
  end
  
  return seq[1..num].join(' ')
end