//: Playground - noun: a place where people can play

import UIKit

protocol SomePropertyProtocol {
    
    var name : String { get set }
    var description : String { get }
    
}

struct RubyMember : SomePropertyProtocol {
    
    var name = "홍길동"
    var description: String { return "name: \(self.name)" }
    
}