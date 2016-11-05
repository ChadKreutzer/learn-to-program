# Grandfather Clock. Write a method which takes a block and calls
# it once for each hour that has passed today. That way, if I were
# to pass in the block do puts 'DONG!' end, it would chime (sort of)
# like a grandfather clock. Test your method out with a few different
# blocks (including the one I just gave you). Hint: You can use
# Time.now.hour to get the current hour. However, this returns a number
# between 0 and 23, so you will have to alter those numbers in order to
# get ordinary clock-face numbers (1 to 12).

def the_hours &block
  start_time = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  
  while start_time > 0 do
    block.call
    start_time -= 1
  end
end

the_hours do
  puts "DONG!"
end