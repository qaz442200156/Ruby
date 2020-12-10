puts '======== Printf Style ========'
template = 'This is %s'
puts template % 'apple' # => "This is apple"

puts 'To 2 decimal places: %.2f' % Math::PI
puts 'To 2 decimal places: %.5f' % Math::PI
puts 'To 2 decimal places: %d' % Math::PI
puts 'To 2 decimal places: %5d' % Math::PI

puts '======== ERB Style 1 ========'
require 'erb'

template = ERB.new %q{I Got <%= item %>!}
item = "Orange"
puts template.result
item = "Box"
puts template.result

puts '======== ERB Style 2 ========'
template = %q{
    <% if datas.empty? %>
        Oops Not Got any datas
    <% else %>
        <% datas.each do |name, number| %>
            DataName: <%= name %> Number: <%= number%>
        <% end %>
    <% end %>
}.gsub(/^\s+/,'')

template = ERB.new(template, nil, '<>')

datas = [
            ["Andy","112255-554"],
            ["Mery","333345-664"],
        ]

template.run
datas = []
puts ' result ? ======'
template.result
puts ' out put ?======'
puts template.result
template.run