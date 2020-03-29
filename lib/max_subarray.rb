
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nums[0] if nums.length == 1

    max = nums[0]
    current_sum = nums[0]

    # start at num[1] because max and current_sum already set at num[0]
    i = 1

    while i < nums.length
      if nums[i] > current_sum + nums[i]
        current_sum = nums[i]
      else
        current_sum += nums[i]
      end
      
      if max < current_sum
        max = current_sum
      end

      i += 1
    end

    return max
    
end
