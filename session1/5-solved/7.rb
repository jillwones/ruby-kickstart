def pirates_say_arrrrrrrrr(string)
  answer = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index]
    answer << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  answer
end
