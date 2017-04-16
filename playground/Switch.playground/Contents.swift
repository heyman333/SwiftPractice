//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var value = (2,3)

switch value {
case let (x,3):
    print("뒤에 숫자가 3인 튜플의 앞자리 숫자는 \(x)입니다.")
case let (3,y):
    print("앞 숫자가 2인 튜플의 뒷자리 숫자는\(y)입니다.")
default:
    print("일지하는 튜플이 없습니다.")
}
