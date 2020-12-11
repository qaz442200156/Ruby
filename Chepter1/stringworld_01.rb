aa="My first string"
puts '======== API Slice ========'
puts aa.slice(3,5)
puts '======== API upcase ========'
puts aa.upcase
aa.upcase
puts aa
aa.upcase!
puts aa
puts '======== API empty? ========'
bb =""
puts bb.empty?
bb = "ABC"
puts bb.empty?
puts '======== API include? ========'
aa="String"        # => "String"
puts aa.include? 'A'    # => FALSE
puts aa.include? 'Str'  # => TRUE
puts aa.include? 'tri'  # => TRUE
puts aa.include? 'n'    # => TRUE
