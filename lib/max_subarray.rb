
# Time Complexity: O(n), I just iterate over the array one time.
# Space Complexity: O(1) as I'm always storing the last_max and max_ending_here and these are always an integer.
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums == []

    current_max = nums[0]
    max_ending_here = 0

    nums.each do |number|
      max_ending_here += number
      
      if current_max < max_ending_here
        current_max = max_ending_here
      elsif (max_ending_here < 0)
        if current_max < number
          current_max = number
        end
        max_ending_here = 0
      end
    end

  return current_max
end
