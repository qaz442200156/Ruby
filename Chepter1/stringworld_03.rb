
hash = {"key"=>"v1","B"=>"v2"}
string =""
hash.each { |k,v| string << "#{k} is Key, #{v} is Value¥n" }
puts string

puts '======== API Array#join ========'
puts hash.keys.join("¥n")+'¥n'

puts '======== API #{} with Class ========'
puts "Here is #{
    class InstantClass 
        def bar
        "Some bar"
        end
    end
InstantClass.new.bar
}"