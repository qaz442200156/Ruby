puts '======== ストリングの作成方法 ========'
puts "food\tbar"    # => food   bar
puts %{food\tbar}   # => food   bar
puts %Q{food\tbar}  # => food   bar

puts 'food\tbar'    # => food\tbar
puts %q{food\tbar}  # => food\tbar

puts '======== to_s\id2nameで変数のタイプをストリングに変化 ========'
puts :a_symbol.to_s
puts :AnotherSymbol.id2name
aa = 123456
puts aa.to_s
bb = [1,2,3]
puts bb
puts bb.to_s

puts '======== symbol ========'
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

puts '======== symbol & intern ========'
puts :dodecahedron.object_id # => 1056668
symbol_name = "hello"
puts symbol_name.intern
puts symbol_name.intern.object_id

symbol_name = "dodecahedron"
puts symbol_name.intern  # => :dodecahedron
puts symbol_name.intern.object_id  # => 1056668