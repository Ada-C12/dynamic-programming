# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
  return nil if nums == nil || nums.empty?

  max_so_far = nums[0]
  current_max = nums[0]
  
  length = nums.length

  (1...length).each do |index|
    temp_max = current_max + nums[index]
    
    if temp_max > nums[index]
      current_max = temp_max
    else
      current_max = nums[index]
    end

    if max_so_far < current_max
      max_so_far = current_max
    end
  end

  return max_so_far    
end
