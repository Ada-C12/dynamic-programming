
# Time Complexity: O(n) n is the size of the nums array
# Space Complexity: O(1)
def max_sub_array(nums)
    
    return nil if nums.empty?
    
    current_sum = 0
    max_sum = nums[0]
    
    i = 0
    
    while i <= nums.length - 1
        current_sum += nums[i]
        
        if current_sum > max_sum
            max_sum = current_sum
        end
        
        if current_sum < 0
            current_sum = 0
        end
        
        i += 1
    end
    
    return max_sum  
end
