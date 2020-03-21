
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    
    current_max = nums[0]
    overall_max = nums[0]
    
    (1...nums.length).each do |index|
        if nums[index] > (current_max + nums[index])
            current_max = nums[index]
        else
            current_max = current_max + nums[index]  
        end
        
        if current_max > overall_max
            overall_max = current_max
        end
    end
    
    return overall_max
end

def max_helper(num1, num2)
    return num1 > num2 ? num1 : num2
end
