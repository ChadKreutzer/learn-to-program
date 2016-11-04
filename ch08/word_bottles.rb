def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  # This is the string we will return.

  onesPlace =  ['one',     'two',       'three',    'four',     'five',
                'six',     'seven',     'eight',    'nine']
  tensPlace =  ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                'sixty',   'seventy',   'eighty',   'ninety']
  teenagers =  ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                'sixteen', 'seventeen', 'eighteen', 'nineteen']
  bigNumbers = [[12, 'trillion'], [9, 'billion'], [6, 'million'],
                [3, 'thousand'], [2, 'hundred']]

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  left  = number
  
  bigNumbers.each do |place|
    write = left/10**place[0]
    left  = left - write*10**place[0]
    if write > 0
      bigNumber  = englishNumber write
      numString = numString + bigNumber + ' ' + place[1]
      if left > 0
        numString = numString + ' '
      end
    end
  end
  
  write = left/10          
  left  = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0
  if write > 0
    numString = numString + onesPlace[write-1]
  end
  
  numString
end

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