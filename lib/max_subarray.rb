
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil || nums.empty?
    
    max = nums[0]
    current = nums[0]
    
    nums.each do |index|
        temp = current + max[index]
        
        if temp > nums[index]
            current = max
        else
            current = nums[index]
        end
        
        if max < current 
            max = current
        end
    end
    
    return max
end
