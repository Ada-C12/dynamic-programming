# Time complexity: O(n) because the each loop is run n times
# Space Complexity: O(n) because there is an additional array solutions that varies linearly with size of n
def newman_conway(terms)
  raise ArgumentError if terms < 1

  solutions = [nil]

  (1..terms).each do |n|
    if n < 3
      solutions << 1
    else
      solutions << (solutions[solutions[n - 1]] + solutions[n - solutions[n - 1]])
    end
  end

  solutions.shift
  return solutions.join(" ")
end