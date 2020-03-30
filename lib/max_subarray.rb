
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return nil if nums == []
    return nums[0] if nums.length == 1

    # start at first item in array
    max_so_far = nums[0]
    max_ending_here = 0

    nums.each do |i|
        # extend subarray and get it's total
        max_ending_here = max_ending_here + i
        # if new total is less than value of just i
        if max_ending_here < i
            # set new subtoal to index value
            max_ending_here = i
        end 
        #  if new total is greater than value of just i
        if max_so_far < max_ending_here
            # set current total to subarray total
            max_so_far = max_ending_here
        end 
    end 

    return max_so_far
end
