require_relative 'dragon'

# Dragon methods:
#   feed, walk, putToBed, toss, rock

puts "You have a new dragon egg! What would you like to name it?"
print ">"
name = gets.chomp.capitalize
puts "That's a great name!"

pet = Dragon.new name

action = ''

while (/quit/i =~ action) == nil do
  puts "You can feed #{name}, walk #{name}, put #{name} to bed, " +
       "toss #{name} in the air, rock #{name} to sleep, or quit."
  puts "Be careful not to get eaten..."
  print "What would you like to do? >"
  action = gets.chomp.upcase
  
  case action
  when /feed/i
    pet.feed
  when /walk/i
    pet.walk
  when /bed/i
    pet.putToBed
  when /toss/i
    pet.toss
  when /rock/i
    pet.rock
  when /quit/i
    puts "You abandon #{name} to its own devices. You are so cruel."
  else
    puts "I don't understand you."
  end
end

