class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end
  
  def cheat set_showing
    if set_showing < 1 || set_showing > 6
      puts "not a valid value"
    else
      @numberShowing = set_showing
    end
  end

end

puts Die.new.showing
die = Die.new.cheat(0)
puts die