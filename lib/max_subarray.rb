
# Time Complexity: O(n); it iterates over each element in the nums array once.
# I don't think the max method adds meaningful time complexity. ?

# Space Complexity: O(1); makes the same number of variables regardless of nums size.
# Variables hold a single value and do not scale.
def max_sub_array(nums)
  return if nums == nil || nums.length == 0
  
  max_so_far = nums[0]
  max_ending_here = nums[0]
  i = 1
  
  while i < nums.length
    max_ending_here = [nums[i], max_ending_here + nums[i]].max
    max_so_far = [max_so_far, max_ending_here].max
    i += 1
  end
  
  return max_so_far
end
