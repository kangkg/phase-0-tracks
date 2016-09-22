## PSEUDO CODE

# Method (array of integers, integer to search for)
#     1. return integer index, or NIL if not present
#     2. dont use built-in.
# end
########################## RELEASE 1 #########################
########################## METHODS #########################

def search_array(array, integer)
  counter = 0                      # Our own INDEX!
  array.each do |value|            # We iterate through array, checking each "value"
    if value == integer; return counter; end     # return the index of the "integer" we searched for
    counter += 1
    if counter >= array.length ; return nil ;end # return nil if "integer" is not present in the array
  end
end

########################## DRIVER CODE release 1 #########################
array = [1,2,3,4,5]
puts search_array(array, 6)

######### DEBUGGING EXAMPLE ##################
arr = [42, 89, 23, 1]
p "SEARCH ARRAY- should print 3: #{search_array(arr, 1)}"
#=> 3
p "SEARCH ARRAY- should print nil: #{search_array(arr, 24)}"
# => nil


######################### RELEASE 2 #########################

def fibonacci(amount)
  fib_array = [0, 1]
  current_value = 0
  if (amount == 0) ; return 0; end # Edge case...
  if (amount == 1) ; return 1; end # Edge case...

  index = 2 # Start indexing after the edge cases.
  until index == amount
    current_value = fib_array[index - 1] + fib_array[index - 2]   # Equation for Fib-sequence. push it onto array afterwards.
      #puts current_value # DEBUG
    fib_array.push(current_value)
    index += 1 # counter approaching amount
  end 
  return fib_array[-1] # return the last value we did!
end

########################## DRIVER release-2 #########################

puts "Here is your Fibonacci at 100: #{fibonacci(100)} Should be 218922995834555169026"


########################## RELEASE 3 #########################

# Bubble Sort Notes: It's a loop within a loop, with the inner loop testing a value against the next value, and swapping them accordingly, then moving to the next pair. The outer loop makes the inner loop run again, until there are no swaps to be made. So in an un-ideal situation, you would unnecessarily run through the loop an excessive amount of times. ("Bubbles to the top.")

# MergeSort: Splits the array into smaller arrays, sorting them, then merging them together.


# Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.

# Insertion Sort: 

def insertion_sort(array)
    final = [array[0]]        # Final grabs the first value in array.
    array.delete_at(0)        # Then it deletes that value, to compare others
    # main code
    for i in array            # for every integer in array:
        final_index = 0
        while final_index < final.length     # Both index and length will increase, till length stops increasing, stopping loop.
            if i <= final[final_index]       #IF the integer is less than the final_index integer:
                final.insert(final_index,i)  #   Insert the integer into the current index.
                break
            elsif final_index == final.length-1 #IF the index reaches the end of final's array, that means the integer is greater than all:
                final.insert(final_index+1,i)   #  Insert the value to the end of array cause it's the greatest value #COULD USE .PUSH HERE
               break 
            end
            final_index+=1                  # We will go to the next index of final, if no conditions are matched
        end # END WHILE LOOP
    end     # END FOR LOOP
    # output
    final #returns final array
end
array = [1, 5, 3, 4, 6, 3] # Expected output (6 length): [1, 3, 3, 4, 5, 6]
puts "Insertion Array: #{insertion_sort(array)}" #DEBUG

# LINE BY LINE CODE: ^ = insertions
# 1 =>  final[1]
# 5 => satisfies elsif-statement(line75), on the first iteration, resulting in final[1,5^]
# 3 =>  satisfies 72 (line75), on the second iteration, resulting in final[1, 3^, 5]
# 4 =>  satisfies 72 (line75), after iterating 3 times. resulting in final[1, 3 , 4^, 5]


############################# Can delete the following:
############## Implement the sorting method in Ruby. ### I CANT DO THIS :( ############################################
# def mergesort(array)
#   # this will split them
#   def mergesort_iter(array_sliced)
#     return array_sliced if array_sliced.length <= 1 # in case the array sliced would be under 1.

#     mid = array_sliced.length/2 - 1
#     left_sorted = mergesort_iter(array_sliced[0..mid])
#                     p "left_sorted: #{left_sorted} " # DEBUG
#     right_sorted = mergesort_iter(array_sliced[mid+1..-1])
#                     p "right_sorted: #{right_sorted} " # DEBUG
#     return merge(left_sorted, right_sorted)
#   end

#   # this will merge them together
#   def merge(left_sorted, right_sorted)
#     res = [] #result
#     l = 0    # left column
#     r = 0    # etc

#     loop do
#       break if r >= right_sorted.length and l >= left_sorted.length

#       if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
#         res << left_sorted[l]
#         l += 1      # counter 
#       else
#         res << right_sorted[r]
#         r += 1
#       end
#     end

#     return res
#   end

#   mergesort_iter(array) # This is what happens first, in mergesort.
# end

# p "MergeSort Result: #{mergesort([1,2,3,231,23,51,5,6,16,16,16,1617,7484])} "

#######################################################################################################################