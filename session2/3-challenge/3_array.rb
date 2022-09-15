# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    answer = ""
    each_char.with_index do |chr, index|
      if index.odd?
        next
      end
      answer << chr
    end
    answer
  end
end

#passes all tests, again slightly different from solved but still works, had to get into from solve with each_char.with_index
