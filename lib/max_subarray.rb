# Time Complexity: O(n) where n is the length of nums
# Space Complexity: O(1)
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?

    max_so_far = nums[0]
    max_ending_here = 0

    nums.each do |element|
        max_ending_here = max_ending_here + element
        if max_ending_here < 0
            max_ending_here = (max_so_far < 0) ? element : 0
        end
        if max_ending_here > max_so_far
            max_so_far = max_ending_here
        end
    end

    return max_so_far
end

# def max_sub_array_1(nums)
#     return 0 if nums == nil
#     return nil if nums.empty?

#     max_element = nums[0]
#     max_so_far = 0
#     max_ending_here = 0

#     nums.each do |element|
#         max_ending_here = max_ending_here + element
#         if max_ending_here < 0
#             max_ending_here = 0
#         end
#         if max_ending_here > max_so_far
#             max_so_far = max_ending_here
#         end
#         if element > max_element
#             max_element = element
#         end
#     end

#     if max_so_far <= 0
#         max_so_far = max_element
#     end

#     return max_so_far
# end


############# Benchmarking ###############
# example_array = [-2, -3, 4, -1, -2, 1, 5, -3]
# expected_maximum_subarray = [4, -1, -2, 1, 5]
# expected_output = 7

# example_array_2 = [-4, -5, -6, -7, -3]
# expected_maximum_subarray = [-3]
# expected_output = -3

# require 'benchmark'
# require 'benchmark/memory'

# require 'set'
# large_example = Set.new()
# 500.times do |i|
#     large_example << rand(-1000...1000)#rand(-1000...-1)
# end
# large_example = large_example.to_a

# n = 500_000
# Benchmark.bm do |benchmark|
#   benchmark.report("1") do
#     n.times do
#       max_sub_array_1(large_example)
#     end
#   end

#   benchmark.report("2") do
#     n.times do
#       max_sub_array(large_example)
#     end
#   end
# end

# Benchmark.memory do |x|
#   x.report("1") { max_sub_array_1(large_example) }
#   x.report("2") { max_sub_array(large_example) }

#   x.compare!
# end
