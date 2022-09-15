# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
arr = string.split('')
answer = []
    arr.each_with_index do |x, i|
        next_character = arr[i+1]
        if x == "r" || x == "R"
            answer.push(next_character)
        end
    end
    answer.join
end

#passed all tests, my own answer (included an array tho cus wasnt sure how to do it just as a string), in the solved section it keeps it as a string

#after rake 1:all they have all passed, so all good for these questions
