//
//  testARCOnClassEmbeddingStruct.swift
//  ClassAndStrcut
//
//  Created by marty.academy on 1/5/25.
//

import Foundation


func testARCOnClassEmbeddingStruct () {
    struct StructOfClasses {
        let emptyClass = EmptyClass()
        let emptyClass2 = EmptyClass()
        let emptyClass3 = EmptyClass()
    }

    let structOfClasses = StructOfClasses()
    let copy = structOfClasses
    let copy2 = structOfClasses
    let copy3 = structOfClasses

    
    //Argument type 'StructOfClasses' expected to be an instance of a class or class-constrained type
    //print(CFGetRetainCount(structOfClasses))
    print(CFGetRetainCount(structOfClasses.emptyClass))
    print(CFGetRetainCount(structOfClasses.emptyClass2))
    print(CFGetRetainCount(structOfClasses.emptyClass3))
    
    // 출력결과
    // structOfClasses는 class Type 이 아니기 때문에, 해당 함수의 인자로 들어갈 수 없다.
    // 5
    // 5
    // 5
}

