
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil
  return nil if nums == []

  max = nums[0]
  previous = nums[0]

  (1...nums.length).each do |i|
    # previous is the max sum possible when the current element is added
    # current element MUST be added
    # previous sum is the only optional
    if previous + nums[i] > nums[i]
      previous += nums[i]
    else
      previous = nums[i]
    end

    if previous > max
      max = previous
    end
  end

  return max
end
