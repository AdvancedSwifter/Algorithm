//
//  main.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

//let input = """
//6
//6
//10
//13
//9
//8
//1
//"""
//
//Q2156().example(inputs: input)

struct StringIterator: IteratorProtocol {
    let str: String

    init(_ str: String) {
        self.str = str
    }

    var offset = 0
    mutating func next() -> Character? {
        if offset < str.count {
            let index = str.index(str.startIndex, offsetBy: offset)
            offset += 1

            return str[index]
        }

        return nil
    }

    typealias Element = Character
}

struct StringSequence: Sequence {
    private let iterator: StringIterator
    init(_ str: String) {
        iterator = StringIterator(str)
    }
    
    typealias Iterator = StringIterator
    func makeIterator() -> StringIterator {
        return iterator
    }
}

let strSequence = StringSequence("Hello")

print(strSequence.sorted())
print(strSequence.map{ String($0).lowercased() })
print(strSequence.reduce("", { $0 + String($1).lowercased()}))

struct StringCollection: RandomAccessCollection {
    subscript(position: String.Index) -> Character {
        return str[position]
    }
    
    let str: String
    var startIndex: String.Index
    var endIndex: String.Index
    
    init(_ str: String) {
        self.str = str
        self.startIndex = str.startIndex
        self.endIndex = str.endIndex
    }
    
    func index(before i: String.Index) -> String.Index {
        return str.index(before: i)
    }
    
    func index(after i: String.Index) -> String.Index {
        return str.index(after: i)
    }
}

var (a, b) = (1, 2)
swap(&a, &b)
print(a, b, "1", 1, "00")
