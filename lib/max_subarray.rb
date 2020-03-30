# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  result = nil
  if nums == nil
    result = 0
  elsif nums.length > 0
    max_so_far = 0
    max_ending_here = 0
    largest_element = nums[0]
    nums.each do |element|
      max_ending_here = max_ending_here + element
      
      max_ending_here = 0 if max_ending_here < 0
      max_so_far = max_ending_here if max_so_far < max_ending_here        
      largest_element = element if element > largest_element
    end
    result = (largest_element < 0) ? largest_element : max_so_far
  end
  return result
end
