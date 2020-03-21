
# Time Complexity: O(n)
# Space Complexity: O(1)
def max_sub_array(nums)
    return nil if nums.empty?
    current_sum = 0
    best_sum = -Float::INFINITY
    nums.each do |n|
        current_sum = [n, current_sum + n].max
        best_sum = [current_sum, best_sum].max
    end 
    return best_sum
end
