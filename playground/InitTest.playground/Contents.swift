//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class SuveuQuestion {
    
    let text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
    
}

let cheesQuestion = SuveuQuestion(text: "Do you like Cheese?")

class ShoppingItem {
    var name: String?
    var quantity = 1
    var purchased = false
    
}

class Father {
    
    var name: String
    var age: Int
    var sex: Bool
    var address: String
    
    init() {
        
        name = "Han Youngsoo"
        age = 27
        sex = true
        address = "Bundang"
    }
    
    convenience init(address:String){
        self.init()
        self.address = address
        
    }
}

class Son: Father {
    
    let money: Int?
    
    override init() {
        money = 5000
        super.init()
        self.sayHello()
        name = "Han General"
        age = 3
        sex = true
        
    }
    
    func sayHello() {
        print("Hello!")
    }
    
}
print(Father(address:"seoul").address)
print(Son().name)
print(Son(address:"korea").address)


class Vehicle {
    
    var numberOfwheels = 0
    var description: String {
        return "\(numberOfwheels) wheel(s)"
    }
}

let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    let specis: String
    
    override init() {
        specis = "Professional Cycle"
        super.init()
        numberOfwheels = 2
    }
}

let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

