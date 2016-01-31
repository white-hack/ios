//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

class Singleton {
    
    private init() {}
    
    class func getInstance() -> Singleton {
        return singleton
    }
}

class Singleton2 {
    class var sharedInstance :Singleton2 {
        struct Static {
            static let instance = Singleton2()
        }
        return Static.instance
    }
}

private let singleton = Singleton()

