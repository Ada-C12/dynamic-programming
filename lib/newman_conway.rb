# def newman_conway_str(num)
#   raise ArgumentError.new("Excepted integer greater than 0; received #{num}") if num <= 0
#   list = [1, 1]
#   newman_conway_helper(num, list) if num > 2

#   result = ''
#   for i in 0...num do
#     result += ' ' if i > 0
#     result += list[i].to_s
#   end
#   return result
# end


# Time complexity: O(n) because each value in the sequence is calculated once because of the cache
# Space Complexity: O(n) where n is the input number (one n for the recursive calls and one n for the list)
def newman_conway(num)
  raise ArgumentError.new("Excepted integer greater than 0; received #{num}") if num <= 0
  list = [1, 1]
  newman_conway_helper(num, list) if num > 2

  result = list[0...num].join(' ')
  return result
end

def newman_conway_helper(num, list)
  index = num - 1
  if list[index].nil?
    previous = newman_conway_helper(index, list)
    x = newman_conway_helper(previous, list) + newman_conway_helper(num - previous, list)
    list[index] = x
  end
  return list[index]
end



############# Benchmarking ###############
# require 'benchmark'
# require 'benchmark/memory'

# n = 50_000
# example_num = 400
# Benchmark.bm do |benchmark|
#   benchmark.report("arr") do
#     n.times do
#       newman_conway(example_num)
#     end
#   end

#   benchmark.report("str") do
#     n.times do
#       newman_conway_str(example_num)
#     end
#   end
# end

# Benchmark.memory do |x|
#   x.report("arr") { newman_conway(example_num) }
#   x.report("str") { newman_conway_str(example_num) }

#   x.compare!
# end
