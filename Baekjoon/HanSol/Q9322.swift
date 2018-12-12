//
//  Q9322.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 11. 5..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class Q9322: QuestionReader {
    override func solution() {
        let (_, values) = testCaseAndInput()
        let valueArrays = values.divideInto(4)
        
        valueArrays.forEach { array in
            let 공개키1 = array[1].split(separator: " ").compactMap{ String($0) }
            let 공개키2 = array[2].split(separator: " ").compactMap{ String($0) }
            let 암호문 = array[3].split(separator: " ").compactMap{ String($0) }
            var 결과: [String] = []
            
            for word in 공개키1 {
                for (offset, value) in 공개키2.enumerated() {
                    if value == word {
                        결과.append(암호문[offset])
                        break
                    }
                }
            }
            
            print(결과.joined(separator: " "))
        }
    }
}
