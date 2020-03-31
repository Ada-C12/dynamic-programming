
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
  return nil if (nums == nil || nums.length === 0)
  
  max = nums[0]
  temp = 0 
  
  nums.each do |num|
    temp += num
    
    if temp > max
      max = temp
    end  
    
    if temp < 0
      temp = 0
    end
  end
  
  return max
end


# p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])