

# Time complexity: O(n) to create the array with the results 
# + O(n) to get each value of the array = 2*O(n) =~ O(n)
# Space Complexity: O(n) as I will need to create an array with n elements and this is constant. 
def newman_conway(num)
  raise ArgumentError if num <= 0
  f = []

  if num == 1
    return "1"
  elsif num == 2
    return "1 1"
  else 
    f = [0,1,1]
    i = 3 

    while i <= num 
      f << f[f[i - 1]] + f[i - f[i - 1]]
      i += 1
    end
  
    string_results = ""
    iteration = 0
    f = f[1..-1]

    f.each do |result|
      iteration +=1
      if f.length == iteration
        string_results += "#{result}"
      else
        string_results += "#{result}" + " "
      end
    end
    return string_results
  end
end