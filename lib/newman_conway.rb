

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  raise ArgumentError, "Number must be greater than zero!" if num < 1
  return "1" if num == 1
  return "1 1" if num == 2
  array = [0, 1, 1]
  index = 3
  until index == num + 1
    new_num = array[array[index - 1]] + array[index - (array[index - 1])]
    array << new_num
    index += 1
  end
  array.shift
  return array.join(" ")
end