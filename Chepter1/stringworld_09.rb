puts '======== String#word_count()　カスタマイズ関数：単語を数える ========'
class String # => ストリングのメインClassは「String」です
    def word_count # => 関数名
        frequencies = Hash.new(0) # => Key pairのHashを定義する
        downcase.scan(/\w+/) {|word| frequencies[word] += 1 } 
        # =>　この関数を使ったストリングを「小文字」に変換して正規表現の「\w+」でストリング内の「単語」を探し出す。
        return frequencies # =>　結果の配列を返す
    end
    def word_count_format(format) # => 「正規表現式」は自由に代入することができるようにする
        frequencies = Hash.new(0)
        downcase.scan(format) {|word| frequencies[word] += 1 } 
        return frequencies
    end
    def word_count_format_final(format)
        frequencies = Hash.new(0)
        # => 「正規表現式」による、単語を取る時作成した、余分な配列の値を排除するために、「ignore」を追加
        downcase.scan(format) {|word, ignore| frequencies[word] += 1 } 
        return frequencies
    end
end
puts %{Dogs dogs dog dog Dogs.}.word_count

puts %{"I have no shame," I said.}.word_count
puts '======== String#word_count_format(正規表現)　カスタマイズ関数：単語を数える ========'
formats = [
    /[0-9A-Za-z]/,
    /[^s]+/,
    /[-'\w]+/,
    /(\w+([-'.]\w+)*)/
    ]
puts '======== Part 1 Same text with difference format ========'

string = %{Just like /\w+/, but doesn't consider underscore part of a ward.}
formats.each { |format| puts "#{string.word_count_format(format)}\n==============\n"}

puts '======== Part 2 ========'
strings = [
    %{Just like /\w+/, but doesn't consider underscore part of a ward.},
    %{Anything that's not whitespace is a word.},
    %{Accept dashes and apostrophes as parts of words.},
    %{A pretty good heuristic for matching English words.}
]
# => Array#each_index
strings.each_index {|i| puts "Element #{i}: #{strings[i]}"}
puts '========'
strings.each_index { |index| puts "#{strings[index].word_count_format(formats[index])}\n==============\n"}

puts '======== Part 3 ========'
puts %{A pretty good heuristic for matching English words.}.word_count_format_final(/(\w+([-'.]\w+)*)/)
puts '========'
puts %{"That F.B.I fella--he's quite the man-about-town."}.word_count_format_final(/(\w+([-'.]\w+)*)/)