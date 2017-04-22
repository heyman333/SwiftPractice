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

protocol MService {
    
    mutating func execute(cmd: String)
    func showPort(p: Int) -> String
}

struct RubyMService : MService {
    
    var paramCommand : String?
    
    mutating func execute(cmd: String) {
        self.paramCommand = cmd
        if cmd == "start" { print("실행합니다.") }
        
    }
    
    func showPort(p:Int) -> String { return "Port : \(p), nowCommand: \(self.paramCommand!)" }
    
}

var mService = RubyMService()
mService.execute(cmd: "MyCommand!")
print(mService.showPort(p: 8080))


protocol SomeTypeProperty {
    
    static var defaultVal : String { get set }
    static func getDefaultValue() -> String
}

struct TypeStruct : SomeTypeProperty {
    
    static var defaultVal: String = "default"
    static func getDefaultValue() -> String {
        return defaultVal
    }
}

class ValurObject : SomeTypeProperty {
    
    static var defaultVal: String = "default"
    class func getDefaultValue() -> String {
        
        return defaultVal
    }
    
}

