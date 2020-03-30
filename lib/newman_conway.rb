# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError if num < 1
  output = Array.new()
  num.times do |i|
    if i < 2
      output << 1
    else
      previous = output[i - 1]
      output << output[previous - 1] + output[i - previous]
    end
  end
  return output.join(" ")
end