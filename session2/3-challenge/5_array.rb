# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
#
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

def mod_three(array)
    answer = []
    array.each do |x|
        remainder = x % 3
        if remainder > 0
            answer << remainder
        end
    end
    answer
end

#passes all tests, did without hints, my answer very differnet from solved so ensure I fully understand solved approach too
