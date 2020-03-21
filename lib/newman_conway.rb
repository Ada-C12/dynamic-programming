

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  arr = [0, 1, 1]
  return arr[1..num].join(" ") if num < 3
  (3..num).each do |i|
    arr[i] = arr[arr[i-1]] + arr[i - arr[i - 1]]
  end
  arr.shift
  return arr.join(" ")
end