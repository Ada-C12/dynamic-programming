
# Time Complexity: O(n) because we have do our if/else operations on every element in the array
# Space Complexity: O(1) because we are re-using the same variable
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?
    return nums[0] if nums.length == 1

    max_so_far = max_ending_here = nums[0]

    nums[1..-1].each do |number|

        if max_ending_here + number < number
            max_ending_here = number
        else
            max_ending_here += number
        end

        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        end
    end

    return max_so_far

end
