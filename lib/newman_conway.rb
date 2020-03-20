# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1

  return "1" if num == 1

  sequence = [1, 1]

  counter = 3

  while counter <= num
    answer = sequence[sequence[counter - 2] - 1] + sequence[(counter - sequence[ counter - 2]) - 1]

    sequence << answer

    counter += 1
  end

  return sequence.join(" ")
end
