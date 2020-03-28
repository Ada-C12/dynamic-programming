

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2
  res = "1 1"
  curr = 3
  num_arr = [0,1,1]
  while curr <= num
    num_arr[curr] = num_arr[num_arr[curr - 1]] + num_arr[curr - num_arr[curr - 1]]
    res += " #{num_arr[curr]}"
    curr += 1
  end
  return res
end


