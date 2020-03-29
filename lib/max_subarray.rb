
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
	return 0 if nums == nil
	return nil if nums == []
	return nums[0] if nums.length == 1
	local_max = 0
	global_max = -Float::INFINITY
	index = 0
	while index < nums.length
		local_max = [nums[index], local_max + nums[index]].max
		if local_max > global_max
			global_max = local_max
		end
		index += 1
	end
	return global_max
end
