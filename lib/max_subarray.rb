
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums.empty?
  
  max_so_far = max_ending_here = nums[0]
  
  nums[1..-1].each do |num|
    if num > max_ending_here + num
      max_ending_here = num
    else
      max_ending_here += num
    end

    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
  end

  return max_so_far
end
