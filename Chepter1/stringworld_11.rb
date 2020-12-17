
puts '======== String#strip ========'

puts " \tWhitespace at beginning and end. \t\n\n"
puts '======== strip ========'
puts " \tWhitespace at beginning and end. \t\n\n".strip
puts '======== lstrip ========'
puts " \tWhitespace at beginning and end. \t\n\n".lstrip
puts '======== rstrip ========'
puts " \tWhitespace at beginning and end. \t\n\n".rstrip


puts '======== String#center, String#ljuts, String#rjust ========'
s = "Some String"
p "original Size Of String :#{s.length}"
for index in (10...16)
    p "ForLoop[#{index}]:#{s.center(index,'-')}"
end
p s.ljust(index)
p s.rjust(index)

puts '======== String#gsub ========'
# Transform Windows-style newline to Unix-style newline
puts "Line one\n\rLine two\r".gsub("\n\r","\n")

# Transform all runs of whitespace into a single space character
puts "\n\rThis string\t\t\tuses\n all\tsorts\nof whitespace.".gsub(/\s+/," ")

# gsub can replace string to another string
puts "This string use All Sorts of Whitespcae.".gsub("All Sorts of Whitespcae","All Sorts of Whitespcae".downcase)

puts '======== String \\b \\v \\n ========'
s = " \bIt's whitespace, Jim,\vbut not as we know it.\n"
puts s
puts '======== String#gsub with /[\s\b\v]+/ ========'
puts s.gsub(/[\s\b\v]+/," ")