
# Time Complexity: O(n) because the each loop will iterate through each item in the array
# Space Complexity: O(1) there are no additional data structures or recursive calls to add to space complexity
def max_sub_array(array)
  return nil if array.empty?
  return array.first if array.length == 1
  
  max_so_far = array[0]
  max_ending_here = array[0]

  (1..array.length - 1).each do |i|
    max_ending_here = [array[i], max_ending_here + array[i]].max
    max_so_far = [max_ending_here, max_so_far].max
  end

  return max_so_far
end
 