# Make the name length program report the correct number of letters.

puts 'What is your full name?'
name = gets.chomp.split
name_length = name[0].length + name[1].length + name[2].length
puts 'Did you know there are ' + name_length.to_s +
     ' characters in your name, ' + name.join(' ') + '?'