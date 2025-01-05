//
//  arcCountingTesting.swift
//  ClassAndStrcut
//
//  Created by marty.academy on 1/5/25.
//

import Foundation


func testARCOnEmbeddingClass() {
    final class EmptyClass {}

    final class ClassOfClasses {
        let emptyClass = EmptyClass()
        let emptyClass2 = EmptyClass()
        let emptyClass3 = EmptyClass()
    }

    let classOfClasses = ClassOfClasses()
    let reference = classOfClasses
    let reference2 = classOfClasses
    let reference3 = classOfClasses

    print(CFGetRetainCount(classOfClasses))
    print(CFGetRetainCount(classOfClasses.emptyClass))
    print(CFGetRetainCount(classOfClasses.emptyClass2))
    print(CFGetRetainCount(classOfClasses.emptyClass3))
    
    // 출력결과
    // 5
    // 2
    // 2
    // 2
}
