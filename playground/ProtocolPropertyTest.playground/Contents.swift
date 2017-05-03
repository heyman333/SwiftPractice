//: Playground - noun: a place where people can play

import UIKit

protocol SomePropertyProtocol {
    
    var name : String { get }
    var description : String { get }
    
}

struct RubyMember : SomePropertyProtocol {
    
    let name = "홍길동"
    var description: String { return "name: \(self.name)" }
    
}

print(RubyMember().name)

