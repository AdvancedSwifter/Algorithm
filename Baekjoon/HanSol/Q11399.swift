//
//  Q11399.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class Q11399: QuestionReader {
    override func solution() {
        let values = inputs.popLast()?.split(separator: " ").compactMap{ return Int($0) } ?? []
        
        let result =
            values
                .sorted()
                .reversed()
                .enumerated()
                .reduce(0) { (result, next) -> Int in
                    let (offset, element) = next
                    return result + (offset + 1) * element
        }
        
        print(result)
    }
}
