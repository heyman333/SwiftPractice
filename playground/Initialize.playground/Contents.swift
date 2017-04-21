//: Playground - noun: a place where people can play

import UIKit

class Base{
    
    init() {
        print("BaseClass Init!")
    }
    
}

class ExBase: Base {
    
    init(strVar:String){
        print(strVar)
    }
}

let testInit = ExBase(strVar:"하이!")
/*
 하이!
 BaseClass Init!
 */










