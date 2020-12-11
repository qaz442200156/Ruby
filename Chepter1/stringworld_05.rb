puts '======== String#reverse ========'
s = ".sdrawkcab si gnirts sihT"
s.reverse! # => 
puts s

puts '======== Array#reverse ========'
s = "order. wrong the in are words These"
puts s.split(/(\s+)/).reverse!.join('')
puts s.split(/\b/).reverse!.join('')

puts '======== Array#reverse ========'
s = ".wrong are words      These"
puts s.split(/(\s+)/).to_s
puts s.split(/\b/).to_s