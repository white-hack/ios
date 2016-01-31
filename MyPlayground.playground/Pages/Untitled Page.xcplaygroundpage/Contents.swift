//: Playground - noun: a place where people can play

import UIKit

func calc(num:Int) -> Int {
    var count = 0
    for i in 1...num {
        count += i
    }
    return count
}

func calc2(nn num:Int) -> Int {
    var count = 0
    for i in 1...num {
        count += i
    }
    return count
}

func calc3(#num:Int) -> Int {
    var count = 0
    for i in 1...num {
        count += i
    }
    return count
}
var count = 0
for var i=1;i<=10;i++ {
    count += i
}
print(count)

print(calc(3))
print(calc2(nn:10))
print(calc3(num:10))



var temp = 3 + 5;
var str = "Hello, playground\(temp)" + "なぎさ"
let NAGISA = "nagisa"
var (a,b) = (1,"a")
a = Int(15.3)
b = String(12)
print(a);
print(b);


//タプル
func tax(price:Int) -> (kakaku:Int, zei:Int) {
    var zei:Int = Int(Double(price) * 0.08)
    var kakaku:Int = price - zei
    return (kakaku:kakaku, zei:zei)
}
var res = tax(10000)
res.kakaku
res.zei

//デフォルト値の利用例
func tax2(#price:Int, rate:Double = 0.08) -> Int {
    return Int(Double(price) * (1.0 + rate))
}

var res2:Int = tax2(price:10000, rate:0.08)
var res3:Int = tax2(price:12300)

//可変長の引数
func calcKahen(#nums:Int...) -> Int {
    var total:Int = 0
    for num in nums {
        total += num
    }
    return total
}
calcKahen(nums:1,2,3,4,5)


//呼び出し元の値が変わる inout
func tax(inout price:Int, rate:Double = 0.08) -> Void {
    price = Int(Double(price) * (1.0 + rate))
}

var num = 12300
tax(&num)
print(num)

//クラス
class Helo {
    var name:String = "Taro";
    
    init(name:String) {
        self.name = name
    }
    
    func say(){
        println("Hello, " + name + "!");
    }
}

class Hello:Helo {
    var old:Int
    //compusedプロパティ
    var age:Int {
        get {
            return old
        }
        set {
            if newValue > 0 {
                old = newValue
            }
        }
    }
    override init(name:String) {
        self.old = 1
        super.init(name:name)
    }
//    init(name:String, age:Int) {
//        //self.age = age
//        //super.init(name:name)
//    }
    
    override func say(){
        println("Hi," + name + "-" + "!");
    }
}

//var obj:Hello = Hello(age:3);
//obj.say();
//
//obj.name = "Hanako";
//obj.say();


//タイププロパティ
class Exchange {
    class var rate:Double {
        return 105.0
    }
    
    class func DollarToYen(d:Double)->Int {
        return Int(d * rate)
    }
    
    class func YenToDollar(y:Int)->Double {
        return Double((y * 100) / Int(rate)) / 100
    }
}

print(Exchange.DollarToYen(150.5))
print(Exchange.YenToDollar(15000))


//[タイプ](count:用意する保管場所の数 , repeatedValue:初期値)
var arr1:[Int] = [Int](count:10, repeatedValue:0)
var arr2:[Int] = [0,0,0,0,0,0,0,0,0,0]

//for 変数 in 配列 {
//    ……実行する処理……
//}

//他に配列でできること
//http://libro.tuyano.com/index3?id=5226003&page=3


//辞書＝MAPに近い
let data:[String:Int] = ["国語":98,"数学":76,"英語":54]
var total = 0
for (key, val) in data {
    total += val
    println("add \(key)")
}
println("Total: \(total)")
//辞書の細かな説明
//http://libro.tuyano.com/index3?id=5226003&page=5



//構造体　initilalizerは自動で作られる
struct MyData {
    var age:Int
    var name:String
    
    func getData() ->String {
        return "[\(name)(\(age))]"
    }
}

var data3 = MyData(age: 99, name: "Taro")
println(data3.getData())

//enum
enum Janken {
    case Goo
    case Choki
    case Paa
}

enum ジャンケン : String {
    case グー = "グー"
    case チョキ = "チョキ"
    case パー = "パー"
}

var me = Janken.Goo
var you = ジャンケン.パー
println(me)
println(you.rawValue)


//関数そのものも値
func calc4(num:Int)->Int {
    var res = 0
    for n in 0...num {
        res += n
    }
    return res
}

var f1 = calc4

println(f1(10))


//クロージャ　関数を引数にできる」
func calc5(num:Int)->Int {
    var res = 0
    for n in 0...num {
        res += n
    }
    return res
}

func printResult(function:(num:Int)->Int, n:Int) {
    println(function(num: n))
}

printResult(calc5, 123)


func printResult3(function:(num:Int)->Int, n:Int) {
    println(function(num: n))
}

printResult3({n in n * 2}, 10)

printResult3({n in
    var re:Int = 0
    for num in 0...n {
        re += num
    }
    return re
    }, 100)


//プロトコルはjavaのインターフェイス
//extensionは抽象クラスに近い


public func CGRectMake(x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    
}
