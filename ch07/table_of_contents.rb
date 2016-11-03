# Rewrite your Table of Contents program (from the chapter on methods).
# Start the program with an array holding all of the information for
# your Table of Contents (chapter names, page numbers, etc.). Then
# print out the information from the array in a beautifully formatted
# Table of Contents.

# # So here's something for you to do in order to play around more with
# # center, ljust, and rjust: Write a program which will display a Table
# # of Contents so that it looks like this:

# #                Table of Contents                
                                                 
# # Chapter 1:  Numbers                        page 1
# # Chapter 2:  Letters                       page 72
# # Chapter 3:  Variables                    page 118

# line_width = 50

# puts "Table of Contents".center(line_width)
# puts
# puts "Chapter 2:  Letters".ljust(line_width/2) +
#      "page 1".rjust(line_width/2)
# puts "Chapter 1:  Numbers".ljust(line_width/2) +
#      "page 72".rjust(line_width/2)
# puts "Chapter 3:  Variables".ljust(line_width/2) +
#      "page 118".rjust(line_width/2)

line_width = 50
chapters = { "Chapter 1:  Numbers" => "page 1",
             "Chapter 2:  Letters" => "page 72",
             "Chapter 3:  Variables" => "page 118"
           }

puts
puts "Table of Contents".center(line_width)
puts
chapters.each do |key, value|
  puts key.ljust(line_width/2) +
       value.rjust(line_width/2)
end