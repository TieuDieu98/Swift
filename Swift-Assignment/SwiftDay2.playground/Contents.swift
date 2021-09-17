import UIKit

//Excerxise 1
func reverseStr(_ str : String?){
    if str != nil {
        let reverse = String(str!.reversed())
        print(reverse)
    }
}

reverseStr("Ngo Van Uy")


//Excercise 2
func convertNumber(_ number: Int64){
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    
        if number % 1_000 == 0 && number >= 1_000 && number < 1_000_000 {
            print("$ \(number/1_000) K")
            
            
        }else if number >= 1_000_000 && number < 1_000_000_000 && number % 1_000_000 == 0{
            print("$ \(number / 1_000_000) M")
            
            
        }else if number >= 1_000_000_000 && number % 1_000_000_000 == 0{
            let myNumber = number / 1_000_000_000
            let billion = formatter.string(from: NSNumber(value: myNumber))
            print("$ \(billion!) B")
            
        }else{
            let result = formatter.string(from: NSNumber(value: number))
        print(result!)
    }
}

convertNumber(1000000000000000000)


//Excercise 3
func smallestCommonMultiple(_ number1 : Int?, _ number2 : Int?) -> Int?{
    var gcd = 0
    var scm = 0
    
    if number1 == nil || number2 == nil {
        return nil
    
    }else if number1! <= 0 || number2! <= 0{
        return 0
        
    }else if number1! <= number2!{
        for num in 1...number2!{
            if number1! % num == 0 && number2! % num == 0 {
                gcd = num
            }
        }
        scm = (number1! * number2!) / gcd
        
    }else{
        for num in 1...number1!{
            if number1! % num == 0 && number2! % num == 0 {
                gcd = num
            }
        }
        scm = (number1! * number2!) / gcd
    }
    return scm
    
}

smallestCommonMultiple(24, 100)



//Excercise 4
var speak = {(_ str : String) -> String in
    print(str)
    return str
}

func think(idea : String?){
    if idea?.isEmpty == nil{
        print("Error")
    }else{
        speak(idea!)
    }
}

think(idea: "Hello Tieu Dieu!")
