## Control Flow

`if, switch`…条件式

`for-in, while, repeat-while`…ループ

if 文は条件は boolean でなければならない。

！！！
→ `if score {...}`のようなコードは error であり、0 との暗黙の比較ではない。

if と let を併用することで、欠落している可能性のある値を扱うことができる。これらの値は optional value として表現される。

optional value は、値を含む or 値が見つからないことを示す`nil`を含む。

値の型の後にクエスチョンマーク`?`を書くと、その値が optional であることを示す。

例:

```
// nilを含むStringを定義(ここではHelloが追加されているので、下の評価ではfalseが出力される)
var optionalString: String? = "Hello"
print(optionalString == nil)

// optionalNameにnilを入れた場合, elseに入る
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, Anonymus!"
}
print(greeting)
```

optional value が nil の場合、条件は false となる。

nil ではない場合、オプションの値はラップされずに let の後に定数に代入され、ラップされていない値がコードブロック内で利用できるようになる。

optional value を扱うもう一つの方法は、`?`オプションの
