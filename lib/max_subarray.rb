# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums.empty?
  
  max = nums[0]
  current_sum = 0
  
  i = 0
  while i < nums.length
    current_sum += nums[i]
    
    if current_sum > max
      max = current_sum
    end
    
    if current_sum < 0
      current_sum = 0
    end 
    
    i += 1
  end
  
  return max
end


#pp max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
