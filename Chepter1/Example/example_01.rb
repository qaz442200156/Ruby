# This example is a real sample when use ruby to read data and do something
# Step 1 open a file 
# A way
file = open('./data.txt', File::RDWR)
# SEE More About IO#open => https://apidock.com/ruby/IO/open

# you can uncommand and see the result below
otherData = open('./data.txt', 'r')

# Step 2 read file's data
data = file.read
puts "Source Data: \n#{data}"

# SEE More About IO#read => https://apidock.com/ruby/IO/read

# Step 3 dealwith the data (use String#slice)
# REQUEST: Remove "縣 and 市"
puts '------------ dealwith data and show result ------------'
data.each_line { |line| puts line.slice(0,2) }

# SEE More About String#each_char => https://apidock.com/ruby/String/each_char
puts '------------ Other style ------------'
# Other style
data = open('./data.txt', 'r').read
# you can uncommand and see the result below
# otherData = open('./data.txt', File::RDWR).read
data.each_line { |line| puts line.slice(0,2) }