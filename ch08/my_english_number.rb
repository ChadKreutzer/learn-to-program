def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  elsif number >= 10**9
    return 'Please enter a smaller number'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  # This is the string we will return.

  onesPlace =  { '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four',
                 '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight',
                 '9' => 'nine' }
  tensPlace =  { '1' => 'ten', '2' => 'twenty', '3' => 'thirty', '4' => 'forty',
                 '5' => 'fifty', '6' => 'sixty', '7' => 'seventy',
                 '8' => 'eighty', '9' => 'ninety' }
  teenagers =  { '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen',
                 '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen',
                 '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen' }
  bigNumbers = { '2' => 'hundred', '3' => 'thousand', '6' => 'million' }
  
  big_number_place = number.to_s.length - 1
  left  = number
  write = left/number.to_s.length          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.
end