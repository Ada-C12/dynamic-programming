# Time Complexity: ?
# Space Complexity: ?

def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []
    
    curr_max = nums[0]
    max_so_far = nums[0]

    i = 1
    until i == nums.length
        if curr_max + nums[i] < nums[i]
            curr_max = nums[i]
        else
            curr_max += nums[i]
        end

        if curr_max > max_so_far
            max_so_far = curr_max
        end
        
        i += 1
    end

    return max_so_far
end
