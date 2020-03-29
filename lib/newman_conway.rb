

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  
  storage = []

  i = 1
  while i <= num
    if i < 3
      storage[i] = 1
    else
      storage[i] = storage[storage[i - 1]] + storage[i - storage[i - 1]]
    end
    i += 1
  end

  return storage.join(" ")[1..-1] # fencepost slice
end