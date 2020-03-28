
# Time Complexity: o(n)
# Space Complexity: o(n)
def max_sub_array(nums)
	return nil if nums.empty?
  max = nums[0]
	curr_max = 0
	
  nums.each do |num|
    if num > num + curr_max
      curr_max = num
    elsif num + curr_max >= num
      curr_max = num + curr_max
		end
		max = curr_max if curr_max > max 
  end
  return max
end
