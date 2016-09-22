## PSEUDO CODE

# Method (array of integers, integer to search for)
#     1. return integer index, or NIL if not present
#     2. dont use built-in.
# end
########################## RELEASE 1 #########################
########################## METHODS #########################

# def search_array(array, integer)
#   counter = 0                      # Our own INDEX!
#   array.each do |value|            # We iterate through array, checking each "value"
#     if value == integer; return counter; end     # return the index of the "integer" we searched for
#     counter += 1
#     if counter >= array.length ; return nil ;end # return nil if "integer" is not present in the array
#   end
# end

# ########################## DRIVER CODE release 1 #########################
# array = [1,2,3,4,5]
# puts search_array(array, 6)

# ######### DEBUGGING EXAMPLE ##################
# arr = [42, 89, 23, 1]
# p "should print 3: #{search_array(arr, 1)}"
# #=> 3
# p "should print nil: #{search_array(arr, 24)}"
# # => nil


########################## RELEASE 2 #########################

def fibonacci(amount)
  fib_array = [0, 1]
  current_value = 0
  if (amount == 0) ; return 0; end # Edge case...
  if (amount == 1) ; return 1; end # Edge case...

  index = 2 # Start indexing after the edge cases.
  until index == amount
    current_value = fib_array[index - 1] + fib_array[index - 2]   # Equation for Fib-sequence. push it onto array afterwards.
    puts current_value # DEBUG
    fib_array.push(current_value)
    index += 1 # counter approaching amount
  end 
  return fib_array[-1] # return the last value we did!
end

########################## DRIVER release-2 #########################

puts "Here is your Fibonacci at 100: #{fibonacci(100)} Should be 218922995834555169026"



# The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1, and keep adding numbers onto the list by adding the previous two. With that in mind, an array of the first six Fibonacci terms would be [0,1,1,2,3,5]. Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, which we started out with.

# (Note that some Fibonacci sequences start out with two 1s instead. Don't let that confuse you.)

# DO THE THING
# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. 
#To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026. (How can you verify this without having to compare this huge number manually? Be smart with your driver code!)