# Write a program which asks for a person's favorite number.
# Have your program add one to the number, then suggest the
# result as a bigger and better favorite number. (Do be tactful
# about it, though.)

puts "What is your favorite number?"
favorite_number = gets.to_i

puts "I think your favorite number should be #{favorite_number + 1}," +
     " it's so much bigger and better!"