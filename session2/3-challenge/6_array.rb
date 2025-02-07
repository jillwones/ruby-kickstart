# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


require 'prime'
def prime_chars?(array)
    string = array.join
    Prime.prime?(string.length)
end

#the commented out code above passes all tests, but lets try avoid using built in funcitons for this one, commented it back in to pass tests

# def prime_chars? array
#     string = array.join
#     number = string.length
#     is_prime = true
#     for i in 2..number - 1
#         if number % i == 0
#             is_prime = false
#         end
#     end
#     is_prime
# end

#the above code works but isnt passing the tests :(
