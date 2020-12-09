## ストリングワールド
---
ストリングはプログラミングの世界中にありふれる変数のタイプです。

Rubyのストリングと他のプログラミング言語と大体同じですが、
Rubyの世界でストリングはもっとダイナミックで変えやすいです。

Rubyの世界は物に意味を付与する方法が下記のようになっています。
```
変数名 = 値
aaa = 1 # => 一般の変数
AAA = 1 # => グローバル変数
```
>Rubyの世界で変数名は全部大文字の場合「グローバル変数」に定義できます。基本的には下記の三種類があります。
![variable](./Image/variable.png)
もっと勉強しましょ → [Ruby変数の種類と違い](https://qiita.com/tomokichi_ruby/items/a2548176d85457f622a4)

ちなみに、他のプログラミング言語はもっと丁寧の形になっています
例えC#は下記のようになっている
```
タイプ　変数名　= 値
```
さそく幾つ役に立つのAPIを見て試してみましょう！

### String#slice ストリングを切る
---
ストリングをスライスする時は、下記のAPIを使えばストリングの切り分けることができます。
```
AA="My first string"
puts AA.slice(3,5) # => 「first」
```
◆練習:stringworld_01.rb

> コードを運行した結果は「first」が表示されます
コードの視点は下記のように運行しています。
``` 
”My first string”.slice(3,5)
↓ ストリングからChar陣列に変換する
{'M','y',' ','f','i','r','s','t',' ','s','t','r','i','n','g'}
要素1　= 'M', 要素2 = 'y', 要素3 = ' '.....
↓ slice(3,5)
代入値1の3は要素3からスライスを行う意味です。
代入値2の5は要素3から五つ要素を取る意味です。
※APIごとにその実行の結果と代入値必要な数と意味も変わります。
```
![String#slice](./Image/slice.jpg)
「AA.slice(代入値1,代入値2)」について説明をします。
>スライス最初代入の値1は「3」です。その「3」の意味は"My first string"が「スライス」の方法を利用して、変数AAのストリングはCharの陣列として、そのchar陣列の中にの第3個目の値からスライスを行う意味です。

>スライスの二番目の代入値2の「5」は、幾つの要素を取るの意味であります。今回は五つ要素を取ります。

>補足：「ストリングからChar陣列に変換する」意味とは「"ABC"一つの単位」から複数の「{'A','B','C'}」のChar陣列になる意味である。

「AA.slice（start index,select chars from index）」AA.slice(開始場所, 開始場所から幾つの文字を取得する)

String#sliceに関して詳しいAPI内容はこちらへ → [String#slice](https://apidock.com/ruby/String/slice)


### String#upcase
---
ストリングは大文字に変更するAPIです。
```
aa="My string"
aa.upcase # => "MY STRING"
```
◆練習:stringworld_01.rb


### String#empty?
ストリングが空きかどうかを判断するAPIです。
```
aa.empty?   # => TRUE
aa="String" # => "String"
aa.empty?   # => FALSE
```
◆練習:stringworld_01.rb

### String#include?
ストリングが指定のストリングが含めているかどうかを判断するAPIです。
```
aa="String"        # => "String"
aa.include? 'A'    # => FALSE
aa.include? 'Str'  # => TRUE
aa.include? 'tri'  # => TRUE
aa.include? 'n'    # => TRUE
```
◆練習:stringworld_01.rb
## イテレーション (iterate)
---
### << で内容の増やす
Rubyのプログラミグ言語で、変数に要素を設定するや、追加するなどの方法は幾つがあって今回は「<<」の方法を紹介をします。

この「<<」方法はとても使いやすいが、使いすぎてコードが長くなってしまうことがしやすいから。
>常に、コードをシンプルにして綺麗な状態に維持することが心に留めてください。

ストリング変数を内容を増やす時は普段は「+」の方法で実現するですが、実際の「+」は「加算」の意味もあります。

そして、今回紹介したいの「<<」はアペンド（append）というの方法です。
```
aa="Abc"
aa << "DDD"
puts aa #=> "AbcDDD"
```
◆練習:stringworld_02.rb
### ストリングで他の変数を代入する
Rubyのプログラミング言語はストリングタイプで他の変数を差し込むことができます。このことは全部のプログラミング言語にもできますが、言語ごとに差し込むの方法もちょっと違いますよ。
```
number = 5
bb = "I Got #{number} " # => "I Got 5"

bb = "The number after #{number} is #{number.next} " # => "The number after 5 is 6"

bb = "The number before #{number} is #{number-1} " # => "The number before 5 is 4"

bb = "We're ##{number}!" # => "We're #5!"
```
◆練習:stringworld_02.rb

Api → [[ next ]](https://apidock.com/ruby/Integer/next)

### ストリングのエスケープ処理（escape processing）
>ストリングを使う時、もし「\」の次は[n]を続けて記されたら、その出力結果は[\n]じゃなくて「改行」になってしまった。

>どうして考え通りの[\n]の出力結果にならないのは「エスケープ処理」が発生しましたから。
```
puts "This is string \n good idea"
# => 出力結果
# line 1 "This is string "
# line 2 " good idea"
```
「エスケープ処理」を避けるために[\]の前にもう一つ[\\]を追加したら「エスケープ処理」を避けることができますよ。
```
puts "This is string \\n good idea"
# => 出力結果
# line 1 "This is string n good idea"
```

「エスケープ処理」とは、プログラミング言語やソフトウェアで文字列を扱う際に、特定の記号文字などに続けて記された文字（の並び）に、その文字本来の意味とは異なる特別な意味や機能を与えること。先頭の特殊な文字を「エスケープ文字」という。
もっと勉強しましょう → [エスケープ処理](http://e-words.jp/w/%E3%82%A8%E3%82%B9%E3%82%B1%E3%83%BC%E3%83%97%E5%87%A6%E7%90%86.html)

### ちょっと難しいコードを見てみましょう
```
hash = {"key"=>"v1","B"=>"v2"}
string =""
hash.each { |k,v| string << "#{k} is Key, #{v} is Value¥n" }
puts string
```
◆練習:stringworld_03.rb

まず「hash = {"key"=>"v1","B"=>"v2"}」の部分について説明します。
まずこの「"key"=>"v1"」部分だけ注目しましょう。

>ここの「=>」は区切りとして「左側の　key」と「右側の　v1」を分けました。「左側の部分はKEY」と呼ばれます、「右側は値」を呼ばれます、この状況は「ハッシュテーブル」という状況です。
>
>「[ハッシュテーブル](http://e-words.jp/w/%E3%83%8F%E3%83%83%E3%82%B7%E3%83%A5%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB.html)」とは、データ構造の一つで、標識（キー：key）と対応する値（value）のペアを単位としてデータを格納し、キーを指定すると対応する値を高速に取得できる構造。
>
>・In Ruby what dose "=>" mean → [[=>]](https://stackoverflow.com/questions/4663074/in-ruby-what-does-mean-and-how-does-it-work)
>
>・[The Ruby Map Method](https://www.rubyguides.com/2018/10/ruby-map-method/)

次は「hash.each { |k,v| string << "#{k} is Key, #{v} is Value¥n" }」の部分を見ましょう。
>「.each」の意味は変数陣列の要素を一つつずを取る意味です。
>
>波括弧の中に「|k,v|」の部分を見てください。
>ここの「|k,v|」は二つの変数をラムダ式で宣言する意味です。
>
>・最初の「k」は「Key」の変数名として宣言しています。
>・次の「v」は「Value」の変数名として宣言しています。

### ストリングの中にクラスを挟むまで可能!?
>Q：ストリングの中にこの前話した「#{}」の方法で[ラムダ式(nameless function)](https://ja.wikipedia.org/wiki/%E7%84%A1%E5%90%8D%E9%96%A2%E6%95%B0)のクラスを挟むことが可能でしょうか？

>A:可能です

使う時は下記のような形になっております。でも、普段コードを読みやすいために、下記ようなコードは必要じゃない場合は出来る限りに使わないでください。

```
puts "Here is #{
    class InstantClass 
        def bar
        "Some bar"
        end
    end
InstantClass.new.bar
}"

```

◆練習:stringworld_03.rb