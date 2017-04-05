//: Playground - noun: a place where people can play

import UIKit

var str = "2011.03 ~ 2013.03.02 네이버 iOS개발자 "


let chs = CharacterSet(charactersIn: " ~'#!$%^&*()_-1234567890]\\[/,.<>")
let realResultStr = str.components(separatedBy: chs).joined(separator: "")

