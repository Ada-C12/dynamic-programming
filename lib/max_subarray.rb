
# Time Complexity: O(nums)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    
    max_so_far = nums[0]
    max_ending_here = nums[0]
    
    counter = 1
    until counter > nums.length - 1 # T: O(nums)
        max_ending_here = max_ending_here + nums[counter]
        if max_ending_here < nums[counter]
            max_ending_here = nums[counter]
        end
        
        if max_ending_here > max_so_far
            max_so_far = max_ending_here
        end
        counter += 1
    end
    return max_so_far
end
