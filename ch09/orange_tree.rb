# Make an Orange_tree class. It should have a  height method which
# returns its height, and a  one_year_passes method, which, when called,
# ages the tree one year. Each year the tree grows taller (however much
# you think an orange tree should grow in a year), and after some number
# of years (again, your call) the tree should die. For the first few years,
# it should not produce fruit, but after a while it should, and I guess
# that older trees produce more each year than younger trees... whatever
# you think makes most sense. And, of course, you should be able to
# count_the_oranges (which returns the number of oranges on the tree), and
# pick_an_orange (which reduces the @orange_count by one and returns a string
# telling you how delicious the orange was, or else it just tells you that
# there are no more oranges to pick this year). Make sure that any oranges
# you don't pick one year fall off before the next year.



class Orange_tree
  require_relative '../ch08/english_number'
  
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @max_height = 20 + rand(-2..2)
    @max_age = 50 + rand(-6..6)
    
    puts "You have just planted an orange tree."
  end
  
  def height
    def foot_or_feet(num)
      num == 1 ? "foot" : "feet"
    end
    one_year_passes
    puts "Your tree is #{englishNumber(@height)} #{foot_or_feet(@height)}" +
         " tall now."
  end
  
  def count_the_oranges
    if @orange_count > 0
      puts "Your tree has #{englishNumber(@orange_count)} delicious " +
           "oranges!"
    else
      puts "Sorry, there are no oranges on your tree."
    end
  end
  
  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      puts "That orange was delicious!"
    else
      puts "There are no more oranges to pick this year"
    end
  end
  
  private
  
  def one_year_passes
    @age += 1
    
    puts "One year has passed."
    
    if @age == @max_age + 1
      puts "Your tree has died. No more delicious oranges."
      exit
    end
    
    if @height < @max_height
      @height += 1
    end
    
    case @age
    when 4..7         then @orange_count = 4  +  rand(-3..3)
    when 8..12        then @orange_count = 6  +  rand(-5..5)
    when 13..19       then @orange_count = 9  +  rand(-8..8)
    when 20..30       then @orange_count = 20 +  rand(-10..10)
    when 31..37       then @orange_count = 9  +  rand(-8..8)
    when 38..42       then @orange_count = 6  +  rand(-5..5)
    when 43..@max_age then @orange_count = 4  +  rand(-3..3)
    end
  end
end

naval = Orange_tree.new

year = 0
while year <= 57
  puts "*** #{year} ***"
  naval.height
  naval.count_the_oranges
  naval.pick_an_orange
  naval.count_the_oranges
  
  year += 1
end

