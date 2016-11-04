require_relative '../ch08/english_number'

puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day were you born"
day = gets.chomp.to_i

birthday = Time.mktime(year, month, day)
today = Time.now

raw_age = today.year - birthday.year

if today.month > birthday.month
  age = raw_age
elsif today.month == birthday.month 
  age = today.day >= birthday.day ? raw_age : raw_age - 1
else
  age = raw_age - 1
end

puts "Wow, you are #{englishNumber(age)} years old?\nI missed your birthday " +
     "I'd better give you some spankings:"
spank_count = 1
while spank_count <= age do
  puts "SPANK!"
  spank_count += 1
end