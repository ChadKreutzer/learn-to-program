# Write a method called log, which takes a string description of a
# block and, of course, a block. Similar to  doSelfImportantly,
# it should puts a string telling that it has started the block,
# and another string at the end telling you that it has finished
# the block, and also telling you what the block returned. Test
# your method by sending it a code block. Inside the block, puts
# another call to log, passing another block to it. (This is called
# nesting.) In other words, your output should look something like this:

# * Beginning "outer block"...
# * Beginning "some little block"...
# * ..."some little block" finished, returning:  5
# * Beginning "yet another block"...
# * ..."yet another block" finished, returning:  I like Thai food!
# * ..."outer block" finished, returning:  false

def log block_description, &block
  puts "Beginning '#{block_description}'..."
  
  block_return = block.call
  
  puts "...'#{block_description}' finished, returning: #{block_return}"
end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food!"
  end
  false
end
  