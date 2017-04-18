//: Playground - noun: a place where people can play

import UIKit

struct Position {
    
    var x: Double = 0.0
    var y: Double = 0.0
    
}

struct Size {
    
    var width: Double = 0.0
    var height: Double = 0.0
    
}

struct Rect {
    
    var origin = Position()
    var size = Size()
    
    var center: Position {
        get {
            let centetX = self.origin.x + (self.size.width / 2)
            let centetY = self.origin.y + (self.size.height / 2)
            return Position(x: centetX, y: centetY)
        }
        set(newVal) {
            self.origin.x = newVal.x - (self.size.width / 2)
            self.origin.y = newVal.y - (self.size.height / 2)
        }
    }
}

let s = Size(width: 20.0, height: 20.0)
let p = Position(x: 0.0, y: 0.0)

var square = Rect(origin: p, size: s) //ComputedProperty는 기본 생성자에 포함되지 않는다.
print("CenterX = \(square.center.x), CenterY = \(square.center.y)")
//CenterX = 10.0, CenterY = 10.0

square.center.x = 20.0
square.center.y = 20.0
print("originX = \(square.origin.x), originY = \(square.origin.y)")
// originX = 10.0, originY = 10.0



		