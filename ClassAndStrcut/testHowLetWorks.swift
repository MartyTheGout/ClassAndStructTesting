//
//  testHowLetWorks.swift
//  ClassAndStrcut
//
//  Created by marty.academy on 1/6/25.
//

import Foundation

// 구조체 : a는 변수 Int, b는 상수 Int
struct AStruct {
    var a: Int
    let b: Int
}

// 클래스 : a는 변수 Int, b는 상수 Int
class AClass {
    var a: Int
    let b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

func testHowLetWorks() {

    let aStruct = AStruct(a: 1, b: 2)
//    aStruct.a = 3 // Cannot assign to property: 'aStruct' is a 'let' constant
//    aStruct.b = 4 // Cannot assign to property: 'b' is a 'let' constant
    
    let aClass = AClass(a: 1, b: 2)
    aClass.a = 3
//    aClass.b = 4 // Cannot assign to property: 'b' is a 'let' constant
}
