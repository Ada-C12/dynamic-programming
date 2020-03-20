
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []
    max_sum = prev = nums[0]
    i = 1
    while i < nums.length
      curr = nums[i]
      curr = [prev + curr, curr].max
      max_sum = [max_sum, curr].max 
      prev = curr
      i += 1
    end
    return max_sum
end
