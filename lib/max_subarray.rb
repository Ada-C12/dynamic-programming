
# Time Complexity: O(n)
## The method iterates over the entire array but does so only once

# Space Complexity: O(1)
## There are a limited number of variables that are constantly being re-assessed, so as the input goes to infitity the space requirements do not grow. 

def max_sub_array(number_array)
    length = number_array.length
    if length == 0 
        return nil
    elsif length == 1
        return number_array[0]
    end
    
    max_so_far = number_array[0]
    max_ending_here = 0
    
    i = 0
    
    until i == length do
        
        max_ending_here = max_ending_here + number_array[i]
        
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
            i += 1
        elsif max_ending_here < 0
            max_ending_here = 0
            i += 1
        else
            i+= 1
        end
    end
    
    return max_so_far
    
end
