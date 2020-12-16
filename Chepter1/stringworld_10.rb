puts '======== String upcase, downcase, swapcase, capitalize ========'
string = 'HELLO, I am not here. I WENT to tHe MaRKET.'
puts string.upcase
puts string.downcase
puts string.swapcase
puts string.capitalize

puts '======== String#capitalize_first_letter　カスタマイズ関数：ストリング最初の一文字を大文字にする ========'
class String
    def capitalize_first_letter
        self[0].chr.capitalize + self[1,size]
    end
    
    def capitalize_first_letter!
        unless self[0] == (c = self[0,1].upcase[0])
        self[0] = c
        self
        end
    end
end

s = 'i told Alice. She remembers now.'
puts s.capitalize_first_letter
puts s
puts s.capitalize_first_letter!

puts '======== unless ========'

a = 10
b = 5

puts '=== if else ========'
puts "a:#{a} , b:#{b}"
if a >= b
    puts 'a > or >= b'
else
    puts 'a < b'
end
puts '=== unless 1 ========'
puts "a:#{a} , b:#{b} is a >= b ?"
unless a >= b
    puts 'result == false : a < b'
else
    puts 'result == true : a >= b'
end
puts '=== unless 2 ========'
b = 100
puts "a:#{a} , b:#{b} is a >= b ?"
unless a >= b
    puts 'result == false : a < b'
else
    puts 'result == true : a >= b'
end

puts '======== String#tr ========'
puts 'LOWERCASE ALL VOWELS'.tr('AEIOU','aeiou')
puts 'Swap case of ALL VOWELS'.tr('AEIOUaeiou','aeiouAEIOU')
puts 'A B C D E F G a b c d e f g'.tr('Ab','bA')