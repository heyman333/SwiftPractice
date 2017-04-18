//: Playground - noun: a place where people can play

import UIKit

class OnCreate{
    init() {
        print("OnCreate init!")
    }
    
}

class LazyTest{
    lazy var var1 = {
       print("var1 execute!!")
    }()
    lazy var onCreateInst = OnCreate()
    
    init() {
        print("lazyTest Init!")
    }
}

let testInst = LazyTest()

testInst.onCreateInst
testInst.onCreateInst
testInst.var1