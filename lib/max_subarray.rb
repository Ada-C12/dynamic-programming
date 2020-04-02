
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    # you calculated 
    return 0 if nums == nil
    
    current_max = nums[0]
    global_max = nums[0]

    i = 1

    while i < nums.length 
        current_max = [nums[i], (current_max + nums[i])].max
        global_max = [global_max, current_max].max
        i += 1
    end 

    return global_max
end
