

# Time complexity: O(n)
# Space Complexity: O(n)

def newman_conway(num)
  if num == 0
    throw ArgumentError, "no value for 0 in the Newman-Conway sequence"
  end
  
  seq = []
  # holding seq[0] as nil
  # this keeps the index number 'n' equal to the argument 'num'
  # tiny space sacrifice to keep those numbers the same
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