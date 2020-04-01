
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.length == 0
    
    curr_max_sum = nums[0]
    max_sum = nums[0]
    i = 1
    while i < nums.length
        if (curr_max_sum + nums[i]) <= nums[i] 
            curr_max_sum = nums[i]
        elsif (curr_max_sum + nums[i]) >= nums[i]
            curr_max_sum += nums[i]
        end
        
        if (curr_max_sum > max_sum)
            max_sum = curr_max_sum
        end
        i += 1
    end
    
    return max_sum
    
end
