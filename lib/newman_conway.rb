

# Time complexity: ?
# Space Complexity: ?
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  return "1 1" if num == 2

  sequence = [0, 1, 1]

  (3..num).each do |n|
    p_last = sequence[n - 1]
    sequence << (sequence[p_last] + sequence[n - p_last])
  end
  return sequence[1..-1].join(' ')
end