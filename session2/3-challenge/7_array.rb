# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(string)
    '!@$#%^&*()-=_+[]:;,./<>?\|'.split('').each do |char|   #the split('') splits it into an array of characters, if it was just split it would be a 1 element array
        string = string.gsub(char, ' ')
    end
    array = string.split(' ')
    answer = []
    array.each_with_index do |word, index|
        if index.even?
            answer << word
        end
    end
    answer
end

#passes the tests, basically splits the string of characters that we want to get rid of into an array of characters, we then loop through this array and on the string we subsitute any character that isnt allowed into a space, we then split the input string into an array, with each element being a seperate word, we then loop throguh this array (that now has no prohibitted chars in) and if the index of the element is even then we push it onto the answer array, once this has finished we return the answer array
