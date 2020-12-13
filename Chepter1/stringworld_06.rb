puts '======== 普段使っているASCII ========'
puts "Sound system bell:\a"
puts "BS:12345 One BS:1234\b5 Two BS:123\x08\x0845 Two BS:123\x084\x085"
puts "FF:Hello\fWorld\f"
puts "LF:Line1\nLine2\n\nLine3"
puts "CR:\rHelloWorld"
puts "HT:\tOne Tab.\t\tTwo tabs."
puts "VT:\vOne Vertical tab.\v\vTwo Vertical tabs."

puts '======== ASCII交換性検証 ========'
puts "\a" == "\x07" # => True # ASCII 0x07 = BEL (Sound system bell)
puts "\b" == "\x08" # => True # ASCII 0x08 = BS(Backspace)
puts "\e" == "\x1b" # => True # ASCII 0x1b = ESC(Escape)
puts "\f" == "\x0c" # => True # ASCII 0x0c = FF(Form feed)
puts "\n" == "\x0a" # => True # ASCII 0x0a = LF(Newline/line feed)
puts "\r" == "\x0d" # => True # ASCII 0x0d = CR(Carriage return)
puts "\t" == "\x09" # => True # ASCII 0x09 = HT(Tab/horizontal tab)
puts "\v" == "\x0b" # => True # ASCII 0x0b = VT(Vertical tab)

puts '======== ASCIIの表現 ========'
puts "\x10\x11\xfe\xff"     # => "\020\021\376\377"
puts "\x48\145\x6c\157\x0a" # => "Hello\n"