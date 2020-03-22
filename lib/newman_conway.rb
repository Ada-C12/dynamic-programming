# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError.new("Invalid input, must be greater than 0") if num < 1
  
  list = []
  i = 0
  until i == num || i == 2
    list << 1
    i += 1
  end
  
  return list.join(" ") if num < 3

  return nc_helper(num, list).join(" ")
end

def nc_helper(n, list)
  return 1 if n < 3
  
  if list[n-2]
    n_minus_one = list[n-2]
  else
    n_minus_one = (nc_helper(n-1, list)).last
  end

  return list << list[n_minus_one - 1] + list[n - n_minus_one - 1]
end