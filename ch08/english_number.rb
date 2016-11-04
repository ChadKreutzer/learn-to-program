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