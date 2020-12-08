hash = {"key"=>"v1","B"=>"v2"}
string =""
hash.each { |k,v| string << "#{k} is Key, #{v} is Value¥n" }
puts string

puts '======== API Array#join ========'
puts hash.keys.join("¥n")+'¥n'