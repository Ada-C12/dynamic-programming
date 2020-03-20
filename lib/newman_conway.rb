

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num, p=[1, 1])
  raise ArgumentError if num <= 0
  return "1" if num == 1
  return "1 1" if num == 2
  
  n = p.length
  return p.join(' ') if n == num

  p_1_as_val = p[n - 1]
  p_1_as_index = p_1_as_val - 1
  
  p_n = p[ p_1_as_index ] + p[ n - p_1_as_val ]
  newman_conway(num, p << p_n)
end
