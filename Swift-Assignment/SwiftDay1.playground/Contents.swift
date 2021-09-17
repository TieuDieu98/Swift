import UIKit

//Excercise 1
let x1 = 2.0 , y1 = 4.0 , x2 = 6.0 , y2 = 8.0

let distance = sqrt( pow(x2 - x1, 2) + pow(y2 - y1, 2) )
print("The distance of 2 points is: \(distance)")

//Excercise 2
let n = 6
var factorial = 1
for eachNum in 1...n{
    factorial *= eachNum
}
print("The facetorial of n is: \(factorial)")


//Excercise 3
let number = 1.0
var arrNum = [Double]()
let step = 0.1

for eachDoub in stride(from: 0.0, through: number, by: step) {
    arrNum.append(Double(round(10*eachDoub)/10))
}
print("This is my Array: \(arrNum)")



loopLabeled: for eachNum in 0...20{
    if  eachNum > 10 {
        if eachNum % 2 == 0{
            print(eachNum)
            break loopLabeled
        }
    }
}


//Excercise 4
func checkString(_ strArr: [String]) -> Bool{
    for str in strArr {
        if str.isEmpty {
            print("false")
        }else{
            print("true")
        }
        
    }
    return true
}

checkString(["Hello", "World", "!", ""])


func fibonacci(_ number: Int?) -> Int{
    var num1 = 0
    var num2 = 1
    var fibo = [num1, num2]
    for _ in 0..<number! {
        let num = num1 + num2
        fibo.append(num)
        num1 = num2
        num2 = num
    }
    print(fibo)
    return fibo.endIndex
}
fibonacci(8)


// Excercise 5
var student : [String : Double] = ["UyNV1" : 7.0 , "TungVV3" : 7.5, "hoangNV44" : 8.0]
let values = student.values
var sum = 0.0
var sumScore = {
    for value in values {
        sum += Double(value)
    }
    print("The sum of the values in your Dictionary is: \(sum)")
}
sumScore()


//Excercise 6:

var square = {(_ N : Int) -> Bool in
    if 0<N && N < 2^69 {
        let temp = Int(sqrt(Double(N)))
        if temp*temp == N {
            return true
        }else{
            return false
        }
    }
    return true
}

if square(16) == true {
    print("This number is a square number.")
}else{
    print("This number is not square number!")
}
