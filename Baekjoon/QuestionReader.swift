//
//  QuestionReader.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class QuestionReader {
    var inputs: [String] = []
    
    func solution() {
        assert(true) // 오버라이드 해서 사용할 것
    }
}

// MARK :- String Reader
extension QuestionReader {
    func example(inputs: String){
        inputs.split(separator: "\n")
            .map{ String($0) }
            .forEach{ read($0) }
        solution()
    }
    
    func userInput() {
        while let line = readLine() {
            read(line)
        }
        solution()
    }
    
    func read(_ line: String?) {
        guard let line = line else { return }
        inputs.append(line)
    }
}

// MARK :- Simple Inputs
extension QuestionReader {
    func simpleTwoInteger(from arg: String? = nil) -> (Int, Int) {
        let line = (arg ?? inputs.first)?.split(separator: " ")
        let first = Int(line?.first ?? "0") ?? 0
        let second = Int(line?.last ?? "0") ?? 0
        
        return (first, second)
    }
    
    func testCaseAndInput() -> (Int, [String]) {
        let numOfTestCase = Int(inputs.first ?? "0") ?? 0
        let values = inputs[1...]
        
        return (numOfTestCase, Array(values))
    }
}

extension Array where Element == String {
    func divideInto(_ n: Int) -> [[String]] {
        var newArray = [[String]](repeating: [String](), count: count / n)
        
        for (offset, value) in enumerated() {
            newArray[offset / n].append(value)
        }
        
        return newArray
    }
}

protocol A {
    func f() -> Bool
}

extension A {
    func f() -> Bool {
        return true
    }
}
