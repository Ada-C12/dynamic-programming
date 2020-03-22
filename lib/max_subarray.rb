
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.nil? || nums.empty?
    
    max_so_far = nums[0]
    max_ending_here = 0

    nums.each do |num|
        max_ending_here = max_ending_here + num
        
        max_ending_here = num if max_ending_here < num
        
        max_so_far = max_ending_here if max_so_far < max_ending_here
    end
    
    return max_so_far
end
