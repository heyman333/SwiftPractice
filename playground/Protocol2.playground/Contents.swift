//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol SomeInitProtocol {
    
    init()
    init(cmd : String)
    
}

struct SInit : SomeInitProtocol {
    
    var cmd : String
    
    init() { self.cmd = "Start" }
    
    init(cmd : String) { self.cmd = cmd }
    
}

class CInit : SomeInitProtocol {
    
    var cmd : String
    
    required init() { self.cmd = "Start" }
    
    required init(cmd: String) { self.cmd = cmd }
    
}

protocol Init {
    init()
}

class Parent {
    init() {
        
    }
}

class Child : Parent, Init {
    
    override required init() {
        
    }
    
}