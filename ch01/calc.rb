# How many hours are in a year?
# How many minutes are in decade?
# How many seconds old are you?
# How many chocolates do you hope
#   to eat in your lifetime?
# If I am 1246 million seconds old, how old am I?

hours_in_a_year = 365 * 24
minutes_in_a_decade = hours_in_a_year * 60 * 10
seconds_old = hours_in_a_year * 60 * 60 * 41
chocolates_in_lifetime = (95 - 41) * 52 * 2
seconds_question = ((1246000000 / 60) / 60) / hours_in_a_year

puts "There are #{hours_in_a_year} hours in a year."
puts "There are #{minutes_in_a_decade} minutes in a decade."
puts "I am #{seconds_old} seconds old."
puts "I would hope to have #{chocolates_in_lifetime} chocolates in my lifetime."
puts "If I am 1246 million seconds old, I am #{seconds_question} years old."