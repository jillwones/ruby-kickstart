numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Use each to iterate, and pass a block
# We'll cover blocks more later
sum = 0
numbers.each { |number| sum += number }
sum # => 45


# Use map to make a new array out of the elements
# returned by the block
squares = numbers.map { |number| number * number }
squares # => [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


# iterate over the array two at a time
result = []
numbers.each_slice(2) { |a, b| result << [a, b] }
result # => [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9]]


# iterate over the array in groups of two
# hitting each group as we go
result = []
nums = (0..5).to_a #[0,1,2,3,4,5]
nums.each_cons(2) { |a, b| result << [a, b] }
result # => [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]]

#each_cons compares each consecutive 2 elements when passed (2), if i passed 3 for each_cons(3) then i would do { |a, b, c| result << [a, b, c]} and this would result in [[0, 1, 2], [1, 2, 3], [2, 3, 4], [3, 4, 5]] so it moves up one element at a time before executing the code block
