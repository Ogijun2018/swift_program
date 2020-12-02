// example of computed property
struct Square {
    // stored property
    var sideLength = 3
    // computed property
    // computed property の宣言ではletは指定できない -> 値は変更されるから
    // computed property では、型名の指定は必須 -> 初期値を代入しないから
    // メソッドと同じ動作だが、以下の二点で違いがある
    // 1. computed property は、引数をとることができない
    // 2. computed property には、戻り値が必ずある
    var area:Int {
        // 式が一つしかない場合はreturnを省略できる
        sideLength * sideLength
    }
}
let square = Square()
print(square.area)
