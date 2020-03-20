

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  return "1" if num == 1
  return "1 1" if num == 2

  store = [nil, 1, 1]
  current = 1     # current is also P(n - 1)
  output = "1 1"

  (3..num).each do |n|
    # puts "n - current: #{n - current}"
    current = store[current] + store[n - current]
    store << current
    output << " #{current}"
  end

  # Might possibly get away with storing on the first 50% of values

  return output
end