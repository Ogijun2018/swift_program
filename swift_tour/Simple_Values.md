## Simple Values

`let`…定数

`var`…変数

(JavaScript でいう`const`と`let`)

定数や変数は代入したい値と同じ型を持っている必要があるが、必ずしも明示的に型を宣言しなくても良い（Swift が型推測をしてくれるから）。

初期値がない場合・十分な情報が得られない場合、コロンで区切って変数の後に記述する。

`let explicitDouble: Double = 70`

値が暗黙の型変換をされることはない。別の型に変換する必要がある場合は、目的の型のインスタンスを明示的に作成する。

<b>文字列の中に値を入れたい場合、`String()`と毎回やらなくても`\()`とすることで同じ表現ができる。</b>

`"""`…複数行に及ぶ入力

例:

```
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
```

`[]`…配列や辞書の作成

例:

```
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"
```

配列の要素数は追加(`array.append`)すると自動で拡張される。

空の配列や辞書の作成にはイニシャライザ構文を用いる。

例:

```
let emptyArray = [String]()
let emptyDivtionary = [String: Float]()
```

型情報が推測できる場合は、空の配列を`[]`として、空の辞書を`[:]`と書くことができる。

すでに作成されている変数の配列に新しい値を設定・関数に引数を渡す etc...
