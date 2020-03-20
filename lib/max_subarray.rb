
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def max_sub_array(nums)
    ### Brute force
    return 0 if nums == nil
    
    curr_best_sum = nums[0]
    
    length = nums.length
    
    i = 0
    while i < length
        curr_sum = nums[i] 
        if curr_sum > curr_best_sum
            curr_best_sum = curr_sum
        end
        
        j = i+1
        while j < length
            curr_sum += nums[j]
            
            if curr_sum > curr_best_sum
                curr_best_sum = curr_sum
            end
            
            j += 1
        end
        
        i += 1
        
    end
    
    return curr_best_sum
end


### EXTREMELY LONG WINDED, NOT SURE HOW I CAN SQUISH IT DOWN
### I'm keeping the print statements so i can understand what i did later
def max_sub_array_DYNAMIC(nums)
    puts "\nSTARTING WITH #{nums}"
    return 0 if nums == nil
    
    # take inventory of the continuous patches
    continuousPositiveSegments = {}
    continuousNegativeAndZeroSegments = {}
    # key = startingIndex, value = sum
    
    # iterate thru to assemble the 2 inventories 
    curr_index = 0
    startingPosIndex = nil
    runningPosTotal = 0
    startingNegIndex = nil
    runningNegTotal = 0
    
    while curr_index < nums.length  
        
        if nums[curr_index] > 0
            # positive element
            if !startingPosIndex
                # start a new pos segment
                startingPosIndex = curr_index
                runningPosTotal += nums[curr_index]
                
                if startingNegIndex
                    # end previous neg segment, add to inventory and reset counters
                    continuousNegativeAndZeroSegments[startingNegIndex] = runningNegTotal
                    startingNegIndex = nil
                    runningNegTotal = 0
                end
                
            elsif startingPosIndex
                # already in the middle of a pos segment
                runningPosTotal += nums[curr_index]
            end
            
        else
            # negative or zero element
            if !startingNegIndex
                # start a new neg segment
                startingNegIndex = curr_index
                runningNegTotal += nums[curr_index]
                
                if startingPosIndex
                    # end previous pos segment, add to inventory and reset counters
                    continuousPositiveSegments[startingPosIndex] = runningPosTotal
                    startingPosIndex = nil
                    runningPosTotal = 0
                end
            elsif startingNegIndex
                # already in the middle of a neg segment
                runningNegTotal += nums[curr_index]
            end
        end
        
        curr_index += 1
    end
    
    # nums array ended, wrap up whatever the last segment happened to be
    if startingPosIndex
        continuousPositiveSegments[startingPosIndex] = runningPosTotal
    else
        continuousNegativeAndZeroSegments[startingNegIndex] = runningNegTotal
    end
    
    ###### FINISHED TAKING INVENTORY #####
    puts "Continuous positive segments:\t#{continuousPositiveSegments}"
    puts "Continuous neg/zero segments:\t#{continuousNegativeAndZeroSegments}\n\n"
    
    
    
    ###### EVALUATE FOR BEST SUM #####
    positiveSegStartingIndices = continuousPositiveSegments.keys
    
    if positiveSegStartingIndices.length == 0
        # return the least negative single element then
        return nums.max()
        
    elsif positiveSegStartingIndices.length == 1
        # only 1 single patch of continuousPositive Segments exist
        return continuousPositiveSegments.values[0]
        
    else
        # evaluate which patches add up for highest number
        # we want to start from each positive segment
        curr_winner = 0
        
        positiveSegStartingIndices.each do |i|
            puts "starting at #{i}"
            curr_contender = 0
            
            if continuousPositiveSegments[i]
                curr_contender += continuousPositiveSegments[i]
            elsif continuousNegativeAndZeroSegments[i]
                curr_contender += continuousNegativeAndZeroSegments[i]
            else
                # this index is in not the start of a pos or neg segment
            end
            
            if curr_contender > curr_winner
                curr_winner = curr_contender
                puts "new winner! #{curr_contender}"
            end
            
            j = i + 1
            while j < nums.length 
                if continuousPositiveSegments[j]
                    curr_contender += continuousPositiveSegments[j]
                elsif continuousNegativeAndZeroSegments[j]
                    curr_contender += continuousNegativeAndZeroSegments[j]
                else
                    # this index is in not the start of a pos or neg segment
                end
                
                if curr_contender > curr_winner
                    curr_winner = curr_contender
                    puts "\tnew winner of #{curr_contender}! Between indices #{i} to #{j}"
                end
                j += 1
            end
        end
        
        puts "WINNER!!! #{curr_winner}"
        return curr_winner
    end
end
