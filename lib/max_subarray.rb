
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def max_sub_array(nums)
    ### Brute force
    return 0 if nums == nil
    
    curr_best_sum = nums[0]
    
    length = nums.length
    
    i = 0
    while i < length
        curr_sum = nums[i] 
        if curr_sum > curr_best_sum
            curr_best_sum = curr_sum
        end
        
        j = i+1
        while j < length
            curr_sum += nums[j]
            
            if curr_sum > curr_best_sum
                curr_best_sum = curr_sum
            end
            
            j += 1
        end
        
        i += 1
        
    end
    
    return curr_best_sum
end
