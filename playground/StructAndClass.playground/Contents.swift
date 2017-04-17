//: Playground - noun: a place where people can play

import UIKit

struct TestStruct{
    var var1:Int?
    var var2:Int?
    
    func printVars(){
        print("var1의 값은\(var1!)이고, var2의 값은\(var2!)입니다")
    }
}

let structTestInst = TestStruct(var1: 10, var2: 20)
structTestInst.printVars()


class TestClass{
    var var1 = 0
    var var2 = 0
    
    init(var1: Int, var2: Int) {
        self.var1 = var1
        self.var2 = var2
    }
    
    func printVars(){
        print("var1의 값은\(var1)이고, var2의 값은\(var2)입니다")
    }
    
}
let classTestInst = TestClass(var1: 100, var2: 200)
classTestInst.printVars()







