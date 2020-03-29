

# Time complexity: o(n)
# Space Complexity: o(n)
def newman_conway(num)
  # raise NotImplementedError, "newman_conway isn't implemented"
  return "1" if num == 1
  array = [1, 1]
  i = 2

  until i == num
    previous = array[i - 1]
    current = array[previous - 1] + array [i - previous]
    array << current
    i += 1
  end
  return array.join("")
end