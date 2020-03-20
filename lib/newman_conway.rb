

# Time complexity: O(num)
# Space Complexity: O(num)
def newman_conway(num)
  raise ArgumentError if num < 1
  ans = []
  i = 1
  while i <= num
    if i <= 2
      ans << 1
    else
      prev = ans[i - 2]
      ans << (ans[prev - 1] + ans[i - 1 - prev])
    end
    i += 1
  end
  return ans.join(' ')
end