# "99 bottles of beer on the wall..." Write a program which prints
# out the lyrics to that beloved classic, that field-trip favorite:
# "99 Bottles of Beer on the Wall."
#
# Verses 99 through 2:
# X bottles of beer on the wall, X bottles of beer.
# Take one down, pass it around, X - 1 bottles of beer on the wall...
# If one of those bottles should happen to fall, 98 bottles of beer on the wall...
#
# Verse 1:
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take it down, pass it around, 0 bottles of beer on the wall...
# If that bottle should happen to fall, 0 bottles of beer on the wall...
#
# Verse 0
# No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall...

bottle_s = 99
def this_many(num)
  num == 1 ? "#{num} bottle" : "#{num} bottles"
end

def that_or_those(num)
  num == 0 ? "that bottle" : "one of those bottles"
end

until bottle_s == 0
  puts "#{this_many(bottle_s)} of beer on the wall, #{this_many(bottle_s)} of beer."
  bottle_s -= 1
  puts "Take one down, pass it around, #{this_many(bottle_s)} of beer on the wall.\n" +
       "If #{that_or_those(bottle_s)} should happen to fall, #{this_many(bottle_s)}" +
       " of beer on the wall."
  puts
end

puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the" +
     " store and buy some more, 99 bottles of beer on the wall."