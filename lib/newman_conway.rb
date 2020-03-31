

# Time complexity: O(n)
# Space Complexity: O(n)
def newman_conway(num)
  if num == 0
    raise ArgumentError
  end
  
  if num == 1
    return num.to_s
  end
  
  answer = [0, 1, 1]
  
  (3..num).each do |i|
    add = answer[answer[i-1]] + answer[i-answer[i-1]]
    answer << add
  end
  
  answer_string = ""
  
  answer.each do |number|
    if number != 0
      answer_string = answer_string + " " + number.to_s
    end 
  end
  
  return answer_string.strip
  
end
