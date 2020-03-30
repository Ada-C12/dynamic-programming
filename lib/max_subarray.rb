
# Time Complexity: O(n) where n is the length of nums
# Space Complexity: O(1) because you only keep track of 2 numbers
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums.empty?
  
  max_by_here = nums[0]
  max_so_far = nums[0]
  
  nums.each_with_index do |num, index|
    unless index == 0
      if max_so_far < 0
        if num > max_so_far
          max_so_far = num
        end
      else
        max_by_here += num
        
        if max_by_here < 0
          max_by_here = 0
        elsif max_by_here > max_so_far
          max_so_far = max_by_here
        end
      end
    end
  end
  
  return max_so_far
end
