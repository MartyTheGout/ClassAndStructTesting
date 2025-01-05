//
//  copyOnAssignmentTesting.swift
//  ClassAndStrcut
//
//  Created by marty.academy on 1/5/25.
//

import Foundation

final class EmptyClass {}

struct HugeStruct {
    var emptyClass = EmptyClass()
    var emptyClass2 = EmptyClass()
    var emptyClass3 = EmptyClass()
    var emptyClass4 = EmptyClass()
    var emptyClass5 = EmptyClass()
    var emptyClass6 = EmptyClass()
    var emptyClass7 = EmptyClass()
    var emptyClass8 = EmptyClass()
    var emptyClass9 = EmptyClass()
    var emptyClass10 = EmptyClass()
}

class HugeClass {
    var emptyClass = EmptyClass()
    var emptyClass2 = EmptyClass()
    var emptyClass3 = EmptyClass()
    var emptyClass4 = EmptyClass()
    var emptyClass5 = EmptyClass()
    var emptyClass6 = EmptyClass()
    var emptyClass7 = EmptyClass()
    var emptyClass8 = EmptyClass()
    var emptyClass9 = EmptyClass()
    var emptyClass10 = EmptyClass()
}

func createBunchOfReferencesOfClass() {
    var array = [HugeClass]()
    let object = HugeClass()
    for _ in 0..<10000000 {
        array.append(object)
    }
}

func createBunchOfCopiesOfStruct() {
    var array = [HugeStruct]()
    let object = HugeStruct()
    for _ in 0..<10000000 {
        array.append(object)
    }
}

func measureTime(of function: () -> Void, name : String) {
    let start = Date()
    function()
    let end = Date()
    let timeInterval = end.timeIntervalSince(start)
    print("\(name) 실행 시간: \(timeInterval)초")
}
// 실행 시간이 둘 중에 어느게 더 길지?


func testCopyOnAssignmnet() {
    measureTime(of: createBunchOfReferencesOfClass, name: "클래스")
    measureTime(of: createBunchOfCopiesOfStruct, name: "구조체")
}

