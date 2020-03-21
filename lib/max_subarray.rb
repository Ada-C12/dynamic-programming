
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?

    max = current_max = nums[0]
    i = 1
    until i == nums.length
        if nums[i] > (current_max + nums[i])
            current_max = nums[i]
        elsif nums[i] < (current_max + nums[i])
            current_max += nums[i]
        end

        max = current_max if current_max > max

        i += 1
    end

    return max
end
