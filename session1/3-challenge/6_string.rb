# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    answer = ""
    string.size.times do |index|
        if return_odds && index.even?
            next   #this basically skipping the characters with an even index, so when return_odds is true only odd characters are added to answer
        end
        if !return_odds && index.odd?
            next  #this is skipping the characters with an odd index, so when return_odds is false only even characters are added to answer
        end
        answer << string[index]
    end
    answer
end

#passed all tests, needed help tho, so basically with this we create an empty string to fill with our answer, we loop through the string for the same amount of times as it is long, if return_odds evaluates as true and so does the index for that character is even, then we skip it (using next we skip that iteration of the loop so that string[index] is never added to the answer, but if the return_odds is false and the index is odd then we skip that as now we want to build a string with just the even characters, so we skip the ones (using next again) where their index.odd? evaluates as true), at the end we just return the answer
