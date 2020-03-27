
# Time Complexity: o(n) - one loop for each num in nums
# Space Complexity: o(1) - creates 2 variables only, no matter value of nums
def max_sub_array(nums)
    return 0 if nums.nil? 
    return nil if nums.empty?
    
    max_so_far = nums[0]
    max_for_sub_array = 0

    nums.each do |num|
      max_for_sub_array = max_for_sub_array + num
      if num > max_for_sub_array
        max_for_sub_array = num
      end
      if max_for_sub_array > max_so_far
        max_so_far = max_for_sub_array
      end
    end
    return max_so_far

end