

# Time complexity: o(n) - runtime for most values of num and in worst case is n - 2 calculations
# Space Complexity: o(n) - size of sequence and answer string has linear dependency on value of num
def newman_conway(num)
  raise ArgumentError if num == 0
  return "1" if num == 1
  return "1 1" if num == 2

  sequence = [0, 1, 1]

  answer = "1 1"

  (3..num).each do |n|
    p_last = sequence[n - 1]
    sequence << (sequence[p_last] + sequence[n - p_last])
    answer += " #{sequence[n]}"
  end
  return answer
end