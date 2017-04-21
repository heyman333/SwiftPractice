//: Playground - noun: a place where people can play

import UIKit

extension Double {

    var km : Double { return self * 1_000 }
    var m : Double { return self }
    var cm : Double { return self / 100.0 }
    var mm : Double { return self / 1_000.0 }
    
    var description : String {
        return "\(self)km는 \(self.km)m,\(self)cm는 \(self.cm)m, \(self)mm는 \(self.mm)m입니다."
    }
}

print(23.3.km)
print(43.0.description)
/*
 23300.0
 43.0km는 43000.0m,43.0cm는 0.43m, 43.0mm는 0.043m입니다.
*/


extension Int {
    mutating func square() -> Int {
        self = self * self
        return self
    }

}
var val = 3
print(val.square())