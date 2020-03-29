
# Time Complexity: o(n)
# Space Complexity: o(1)

def max_sub_array(nums)
  return 0 if nums == nil
    # raise NotImplementedError, "Method not implemented yet!"
  max_so_far = nums[0]
  max_ending_here = 0

  nums.each do |num|
    max_ending_here = max_ending_here + num
    if max_ending_here < num
      max_ending_here = num
    end
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
    end
  end
  return max_so_far
end

#   Initialize:
#     max_so_far = 0
#     max_ending_here = 0

# Loop for each element of the array
#   (a) max_ending_here = max_ending_here + a[i]
#   (b) if(max_ending_here < 0)
#             max_ending_here = 0
#   (c) if(max_so_far < max_ending_here)
#             max_so_far = max_ending_here
# return max_so_far
