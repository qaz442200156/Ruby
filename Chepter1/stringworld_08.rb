puts '======== each_char 1 ========'
"foo\nbar".each_char { |x| puts x}
puts '======== each_char 2 ========'
"foobar".each_char { |x| puts x}
puts '======== each_char == split('') 3 ========'
"foo\nbar".split('').each {|x| puts x}
puts '======== each_byte ========'
"foo\nbar".each_byte { |x| puts x}
puts '======== each_byte with chr ========'
"foobar".each_byte { |x| puts x.chr}
puts '======== each_line ========'
lines = []
page = "There is an apple tree here.
oh The apple has just fallen from the apple tree.
It looks delicious.\n
end
"
page.each_line { |line| puts lines << line}
puts lines.to_s
puts '======== each_line ~= split(\'\\n\') ========'
puts page.split(/[\n]/).to_s
page.split('\n').each { |x| puts x}

puts '======== scan ========'
french = "\xc3\xa7a va"
puts '======== each_byte ========'
french.each_byte { |c| puts c}
puts '======== each_byte to chr and check encoding ========'
french.each_byte { |c| puts "#{c.chr} => #{c.chr.encoding}"}
puts '======== each_byte Pack and force_encoding(\'utf-8\')========'
newfrench = french.each_byte.to_a
puts newfrench.pack('C*').force_encoding('utf-8')

puts '======== scan(/./) ========'
french.scan(/./) { |c| puts c}
puts '======== Set Endcoding And Do scan(/./) ========'
# encoding: utf-8
french.scan(/./) { |c| puts c}
puts '======== scan(/./u) ========'
french.scan(/./u) { |c| puts c}