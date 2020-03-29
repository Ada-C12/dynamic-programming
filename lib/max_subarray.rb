
# Time Complexity: o(n)
# Space Complexity: o(1)
def max_sub_array(nums)
    # raise NotImplementedError, "Method not implemented yet!"
    return 0 if nums == nil
    return nil if nums == []
    array_max = 0
    current_max = 0

    nums.each do |num|
        array_max = array_max + num
        array_max = array_max < 0 ? 0 : array_max
        if array_max > current_max
            current_max = array_max
        end
    end
    if current_max == 0
        current_max = nums.max
    end
    return current_max
end
