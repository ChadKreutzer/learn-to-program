require_relative 'english_number'

def beer_song(beers)
  bottle_s = beers
  def this_many(num)
    num == 1 ? "#{englishNumber(num)} bottle" : "#{englishNumber(num)} bottles"
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
       " store and buy some more, #{englishNumber(beers)} bottles of beer on the wall."
end

puts beer_song(9999)