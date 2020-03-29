# Time complexity: O(n * num) ?
# Space Complexity: O(num) ?
def newman_conway(num)
  newman_conway_helper([0, 1, 1], 3, num)
end

def newman_conway_helper(p, current, n)
  if n <= 0
    raise ArgumentError, "Input must be greater than 0."
  end
  
  return "1" if n == 1
  return "1 1" if n == 2
  
  if current > n 
    p.shift # S: O(n)?  T: O(n)?
    return p.join(" ")
  end
  
  p << p[p[current - 1]] + p[current - p[current - 1]]
  
  return newman_conway_helper(p, current + 1, n) # T: O(num) calls this recursively about num number of times
end
