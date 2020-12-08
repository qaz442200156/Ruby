AA="My first string"
puts '======== API Slice ========'
puts AA.slice(3,5)
puts '======== API upcase ========'
AA.upcase
puts AA
puts '======== API empty? ========'
BB =""
puts BB.empty?
BB = "ABC"
puts BB.empty?
puts '======== API include? ========'
AA="String"        # => "String"
puts AA.include? 'A'    # => FALSE
puts AA.include? 'Str'  # => TRUE
puts AA.include? 'tri'  # => TRUE
puts AA.include? 'n'    # => TRUE
