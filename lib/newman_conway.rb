# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num) # return a string of numbers, in O(n) using memoization
  raise ArgumentError if num == 0
  return "1" if num == 1
  result = "1 1"
  memo = [0, 1, 1]

  n = 3
  while n <= num
    memo[n] = memo[memo[n-1]] + memo[n-memo[n-1]]
    result += " #{memo[n]}"

    n += 1
  end

  return result
end