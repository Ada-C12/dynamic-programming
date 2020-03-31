
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []
    
    max_so_far = 0
    max_ending_here = 0
    positive_flag = false
    
    nums.each do |num|
        if num >= 0
            positive_flag = true
        end
        
        max_so_far = max_so_far + num
        
        if max_so_far < 0
            max_so_far = 0
        end
        
        if max_so_far > max_ending_here
            max_ending_here = max_so_far
        end
    end
    
    if !positive_flag
        largest_num = -Float::INFINITY
        
        nums.each do |num|
            if num > largest_num
                largest_num = num
            end
        end
        
        return largest_num
    end
    
    return max_ending_here
end
