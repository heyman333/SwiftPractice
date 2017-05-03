import UIKit

class OnCreate{
    init() {
        print("OnCreate init!")
    }
}

class LazyTest{
    lazy var var1 = { () -> Int in
        print("Clouser init!!")
        return 10
    }
    lazy var onCreateInst = OnCreate()
    
    init() {
        print("lazyTest Init!")
    }
}

let testInst = LazyTest()
// lazyTest Init!
testInst.onCreateInst
// OnCreate init!
testInst.onCreateInst
// 출력값 없음.
let returnVal = testInst.var1()
//var1 execute!!
print(returnVal)