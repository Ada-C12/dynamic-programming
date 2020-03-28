
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return if nums == nil || nums.length == 0
    
    max_so_far = 0
    max_ending_here = 0
    
    nums.each do |num|
        max_ending_here += num
        if max_ending_here < 0
            max_ending_here = 0
        end
        
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        end
    end
    
    return max_so_far
end
