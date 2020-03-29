# Time Complexity: O(n)
# Space Complexity: O(1)
# Kadane's Algorithm
def max_sub_array(nums)
	return nil if nums.length == 0

	max_so_far = nums[0]
	max_ending_here = 0

	nums.length.times do |i|
			max_ending_here = max_ending_here + nums[i]

			if max_so_far < max_ending_here
					max_so_far = max_ending_here
			end

			if max_ending_here < 0
					max_ending_here = 0
			end
	end

	return max_so_far
end
