import UIKit

//Excercise 2:
enum Food: Int{
    case meat = 10
    case vegetable = 1
    case fruit = 7
    case egg = 5
    case milk = 3
    
}

protocol Living{
    func eat(food : Food)
    func eat(food : [Food])
}

class Animal{
    var fullStatus: Int = 0
    
}

class AnimalA: Animal{
    var delegate : Living?
    func eat(food: Food) {
        fullStatus += food.rawValue
        if fullStatus >= 50 {
            print("I'm full")
        }else{
            print("I'm hungry, please feed me more!")
        }
    }
    
    func eat(food: [Food]) {
        for item in food {
            fullStatus += item.rawValue
            if fullStatus >= 50 {
                print("I'm full")
            }else{
                print("I'm hungry, please feed me more!")
            }
        }
    }
}

class AnimalB : Animal,Living{
    
    func eat(food: Food) {
        if fullStatus >= 50 {
            print("I'm full")
        }else{
            fullStatus += food.rawValue
            print("I'm hungry, please feed me more!")
        }
    }

    func eat(food: [Food]) {
        for item in food {
            fullStatus += item.rawValue
            print(fullStatus)
            if fullStatus >= 50 {
                print("I'm full")
            }else{
                fullStatus += item.rawValue
                print("I'm hungry, please feed me more!")
            }
        }
       
    }
    
}

let dog = AnimalA()
let cat = AnimalB()
dog.delegate = cat
dog.delegate?.eat(food: Food.egg)
dog.delegate?.eat(food: [Food.vegetable, Food.milk])


//Excercise 3


struct Stack {
    var arr = [Int]()
    mutating func peek() -> Int? {
        if (arr.count > 0) {
            return arr.last!
        }
        return nil
    }
    
    mutating func  push(element : Int) {
        arr.append(element)
    }
    
    mutating func pop() -> Int {
        return arr.removeLast()
    }
    
    mutating func count() -> Int {
        return arr.count
    }
    
    subscript (index:Int) -> Int{
        get{
            return arr[index]
        }
        set{
            arr[index] = newValue
        }
    }
}

var stack = Stack()
print(stack.peek() as Any)
stack.push(element: 15)
stack.push(element: 20)
print(stack.peek()!)
print(stack.count())
stack.pop()
print(stack.count())
stack[0] = 100
print(stack[0])
