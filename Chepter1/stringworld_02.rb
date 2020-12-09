puts '======== << で内容の増やす ========'
aa="Abc"
puts aa #=> "Abc"
aa << "DDD"
puts aa #=> "AbcDDD"

puts '======== ストリングで他の変数を代入する ========'
number = 5
bb = "I Got #{number} " # => "I Got 5"
puts bb
bb = "The number after #{number} is #{number.next} " # => "The number after 5 is 6"
puts bb
bb = "The number before #{number} is #{number-1} " # => "The number before 5 is 4"
puts bb
bb = "We're ##{number}!" # => "We're #5!"
puts bb

puts '======== エスケープ処理 ========'

puts "This is string \n good idea"
puts "This is string \\n good idea"