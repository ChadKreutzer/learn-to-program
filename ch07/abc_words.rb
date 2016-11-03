# Let's write a program which asks us to type in as many words as we want
# (one word per line, continuing until we just press Enter on an empty line),
# and which then repeats the words back to us in alphabetical order.
# Try writing the above program without using the sort method. A large part of
# programming is solving problems, so get all the practice you can!

word_list = []
word = " "
puts "type in words, one word per line.\nPress enter on an empty line " +
     "when done."
while word != "" do
  word = gets.chomp
  if word != ""
    word_list.push word
  end
end

temp = false
until temp == true do
  count = 0
  temp = true
  while count < word_list.length - 1 do
    if word_list[count].upcase > word_list[count + 1].upcase
      temp = word_list[count]
      word_list[count] = word_list[count + 1]
      word_list[count + 1] = temp
    end
    count += 1
  end
end

puts word_list