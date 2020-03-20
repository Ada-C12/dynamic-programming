
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  return if nums.empty?

  max_so_far = 0
  max_ending_here = 0

  nums.each do |num|
    max_ending_here += num
    max_ending_here = 0 if max_ending_here < 0
    max_so_far = max_ending_here if max_ending_here > max_so_far
  end

  return max_so_far > 0 ? max_so_far : nums.max
end
