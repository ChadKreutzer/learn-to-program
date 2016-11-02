# Write a program which asks for a person's first name,
# then middle, then last. Finally, it should greet 
# person using their full name.

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{middle_name} #{last_name}. How are you?"