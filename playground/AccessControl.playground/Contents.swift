//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class AccessTest {
    
    private var a = 20
    
    public func getA() -> Int {
        return a
    }

}

let inst = AccessTest()

print(inst.getA())





