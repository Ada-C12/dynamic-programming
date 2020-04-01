# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
  return 0 if nums == nil

  j = 0
  k = 0
  while j < nums.length
    if nums[j] < 0
      k += 1
    end
    j += 1
  end
  
  if k == nums.length
    return nums.max
  else 
    return kadane(nums)
  end
end 


def kadane(nums)
  return 0 if nums == nil

  max_so_far = 0
  max_ending_here = 0

  i = 0
  while i < nums.length
    max_ending_here = max_ending_here + nums[i]
    if(max_ending_here < 0)
      max_ending_here = 0
    elsif(max_so_far < max_ending_here)
      max_so_far = max_ending_here
    end
    i+=1
  end

  return max_so_far
end
